<?php

namespace App\Http\Controllers;

use App\Models\Gudang;
date_default_timezone_set('Asia/Jakarta');
use Illuminate\Foundation\Auth\Access\AuthorizesRequests;
use Illuminate\Foundation\Bus\DispatchesJobs;
use Illuminate\Foundation\Validation\ValidatesRequests;
use Illuminate\Routing\Controller as BaseController;
use Illuminate\Http\Request;
use Illuminate\Support\Str; // Pastikan ini ada
use Illuminate\Support\Facades\Log; // Import the Log facade
use Illuminate\Support\Facades\DB; // Import DB facade
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Session;
use Endroid\QrCode\QrCode;
use Endroid\QrCode\Writer\PngWriter;
date_default_timezone_set('Asia/Jakarta');
class Controller extends BaseController
{
    use AuthorizesRequests, DispatchesJobs, ValidatesRequests;

public function dashboard()
{
    if (session()->get('id_level') > 0) {
        $model = new Gudang();
        $where = array('id_user' => session()->get('id_user'));
        $data['dennis'] = $model->getwhere('tb_user', $where);
        $where = array('id_setting' => 1);
        $data['setting'] = $model->getWhere('tb_setting', $where);

        $this->log_activity('User membuka Dashboard');
        echo view('header', $data);
        echo view('menu', $data);
        echo view('dashboard', $data); // Kirim data ke view
        echo view('footer');

    } else {
        return redirect()->to('Home/login');
    }
}

	public function login()
{
    $model = new Gudang;
    $where = array('id_setting' => 1);
    $data['setting'] = $model->getWhere('tb_setting',$where);
	echo view('header',$data);
	echo view('login',$data);

}
public function aksilogin(Request $request)
{
    $u = $request->input('username');
    $p = $request->input('password');
    $captchaAnswer = $request->input('captcha_answer');
    
    $model = new Gudang();
    $where = array(
        'username' => $u,
        'password' => md5($p)
    );

    $cek = $model->getWhere('tb_user', $where);

    // Offline CAPTCHA answer
    if (!$this->isOnline() && !empty($captchaAnswer)) {
        $correctAnswer = $request->input('correct_captcha_answer');
        if ($captchaAnswer != $correctAnswer) {
            return redirect()->to('Home/login')->with('error', 'Incorrect offline CAPTCHA.');
        }
    }

if ($cek) {
    session()->put('id_user', $cek->id_user);
    session()->put('username', $cek->username);
    session()->put('email', $cek->email);
    session()->put('id_level', $cek->id_level);

    return redirect()->to('Home/kalkulator');
} else {
    return redirect()->to('Home/login')->with('error', 'Invalid username or password.');
}

}

private function isOnline()
{
    return @fopen("http://www.google.com:80/", "r");
}
    private function log_activity($activity)
    {
        $model = new Gudang();
        $data = [
            'id_user'    => session()->get('id_user'),
            'activity'   => $activity,
            'timestamp' => date('Y-m-d H:i:s')
           
        ];

        $model->tambah('tb_activity', $data);
    }
public function activity()
{
    if(session()->get('id_level') == '1'){
        $model = new Gudang();
        $where = array('id_user' => session()->get('id_user'));
        $data['dennis'] = $model->getWhere('tb_user', $where); 
        $where = array('id_setting' => 1);
        $data['setting'] = $model->getWhere('tb_setting', $where);
        $where = array('id_user' => session()->get('id_user'));
        $data['user'] = $model->getWhere('tb_user', $where);
        
        $this->log_activity('User membuka Log Activity');

        // Memanggil join dengan benar
        $data['erwin'] = $model->join('tb_activity', 'tb_user', 'tb_activity.id_user', 'tb_user.id_user');

        echo view('header', $data);
        echo view('menu', $data);
        echo view('activity', $data);
        echo view('footer');
    } else {
        return redirect()->to('Home/error404');
    }
    }
        public function hapus_activity($id){
    $model = new Gudang();
    
    $where = array('id_activity'=>$id);
    $model->hapus('tb_activity',$where);
    $this->log_activity('User melakukan Penghapusan activity');
    
    return redirect()->to('Home/activity');
}
   public function clear_all_activities() {
    $model = new Gudang(); // Pastikan model sudah terdefinisi dengan benar
    
    // Panggil method untuk menghapus semua data dari tabel
    $model->clear_table('tb_activity');
    
    // Log aktivitas
    $this->log_activity('User melakukan Penghapusan seluruh data activity');
    
    // Redirect ke halaman activity setelah penghapusan
    return redirect()->to('Home/activity');
}
    public function setting()
    {
        if(session()->get('id_level') == '1'){
        $model=new Gudang;
                  $where = array('id_user' => session()->get('id_user'));
         $data['dennis'] = $model->getwhere('tb_user', $where); 
        $where = array('id_setting' => 1);
        $data['setting'] = $model->getWhere('tb_setting',$where);
        $this->log_activity('User membuka halaman Setting');
        echo view('header',$data);
        echo view('menu',$data);
        echo view('setting',$data);
        echo view('footer');
        // print_r($data);
    }else{
        return redirect()->to('home/error404');
    }
    }
public function aksi_e_setting(Request $request)
{
    $model = new Gudang();
    
    $a = $request->input('nama_web');
    $icon = $request->file('logo_tab');
    $dash = $request->file('logo_dashboard');
    $login = $request->file('logo_login');

    // Log activity using Laravel's logging system
    Log::info('User melakukan Setting', [
        'Website Name' => $a,
        'Tab Icon' => $icon ? $icon->getClientOriginalName() : 'None',
        'Dashboard Icon' => $dash ? $dash->getClientOriginalName() : 'None',
        'Login Icon' => $login ? $login->getClientOriginalName() : 'None',
    ]);

    $data = ['nama_web' => $a];

    // Handle file uploads
    if ($icon && $icon->isValid()) {
        $icon->move(public_path('images/img/'), $icon->getClientOriginalName());
        $data['logo_tab'] = $icon->getClientOriginalName();
    }

    if ($dash && $dash->isValid()) {
        $dash->move(public_path('images/img/'), $dash->getClientOriginalName());
        $data['logo_dashboard'] = $dash->getClientOriginalName();
    }

    if ($login && $login->isValid()) {
        $login->move(public_path('images/img/'), $login->getClientOriginalName());
        $data['logo_login'] = $login->getClientOriginalName();
    }

    $where = ['id_setting' => 1];
    $model->edit('tb_setting', $data, $where);

    return redirect()->to('Home/setting');
}
public function logout()
{

 $this->log_activity('User melakukan logout');
session()->flush();
return redirect()->to('Home/login');

}
 public function user()
    {
        // if (session()->get('id_level')>0) {
            if(session()->get('id_level') == '1'){
        $model = new Gudang();
                  $where = array('id_user' => session()->get('id_user'));
         $data['dennis'] = $model->getwhere('tb_user', $where); 
        $where = array('id_setting' => 1);
        $data['setting'] = $model->getWhere('tb_setting',$where);
        $this->log_activity('User membuka view User');
       
        $where=array('id_user'=>session()->get('id_user'));
        $data['erwin']=$model->tampil('tb_user');
        echo view('header',$data);
        echo view('menu',$data);
        echo view('user',$data);
        echo view('footer');
    
        }else{
            return redirect()->to('Home/error404');
        }
    }
                public function t_user()
    {
        if (session()->get('id_level')>0) {
        $model = new Gudang();
                  $where = array('id_user' => session()->get('id_user'));
         $data['dennis'] = $model->getwhere('tb_user', $where); 
        $where = array('id_setting' => 1);
        $data['setting'] = $model->getWhere('tb_setting',$where);
        $this->log_activity('User membuka Form Penambahan Data User');
       
        echo view ('header',$data);
        echo view('menu',$data);
        echo view('t_user');
        echo view('footer');
    }else{
        return redirect()->to('Home/login');
    }
    }
public function aksi_t_user(Request $request) // Tambahkan parameter $request
{
    $model = new Gudang();
    $this->log_activity('User melakukan Penambahan Data User');

    // Gunakan $request untuk mendapatkan data dari form
    $a = $request->input('username');
    $b = $request->input('password');
    $c = $request->input('email');
    $d = $request->input('level');

    $isi = array(
        'username' => $a,
        'password' => md5($b),
        'email' => $c,
        'id_level' => $d,
        'create_at' => date('Y-m-d H:i:s')
    );

    $model->tambah('tb_user', $isi);
    return redirect()->to('Home/user');
}
public function aksi_e_user()
{
    $model = new Gudang();
    $this->log_activity('User melakukan Pengeditan Data User');

    // Ambil data dari request menggunakan helper
    $id_user = request()->get('id_user');
    $username = request()->get('username');
    $email = request()->get('email');
    $id_level = request()->get('id_level');

    $where = array('id_user' => $id_user);
    $data = array(
        'username' => $username,
        'email' => $email,
        'id_level' => $id_level,
        'update_at' => date('Y-m-d H:i:s')
    );

    $model->edit('tb_user', $data, $where);
    return redirect()->to('Home/user');
}
public function hapus_user($id){
    $model = new Gudang();
    
    // Log aktivitas penghapusan
    $this->log_activity('User melakukan Penghapusan Data User');

    // Hapus aktivitas terkait user yang dihapus
    $where_activity = array('id_user' => $id);
    $model->hapus('tb_activity', $where_activity);

    // Hapus user dari tb_user
    $where_user = array('id_user' => $id);
    $model->hapus('tb_user', $where_user);

    // Redirect setelah penghapusan
    return redirect()->to('Home/user');
}
public function resetpassword($id)
{
    $model = new Gudang;
    $this->log_activity('User melakukan Reset Password');
    
    $where = ['id_user' => $id];
    $table = 'tb_user'; // Nama tabel
    $kolom = 'id_user';
    $data = ['password' => md5('123')];

    $model->resetpassword($table, $kolom, $where, $data);

    // Menambahkan pesan ke session
    session()->flash('password_reset', 'Password berhasil direset!');

    // Redirect ke halaman user setelah reset
    return redirect()->to('Home/user');
}

public function profile()
    {
        if (session()->get('id_level') > 0) {
            $model = new GUdang();
            
            $this->log_activity('User masuk ke profile');
            $where = array('id_user' => session()->get('id_user'));
            $data['dennis'] = $model->getwhere('tb_user', $where);
            $where = array('id_setting' => 1);
        $data['setting'] = $model->getWhere('tb_setting',$where);

            echo view('header', $data);
            echo view('menu', $data);
            echo view('profile', $data);
            echo view('footer');
        } else {
            return redirect()->to('Home/login');
        }
    }
        public function aksi_e_profile()
    {
        if (session()->get('id_level') > 0) {
            $model = new Gudang();
            $this->log_activity('Mengedit Profile');
            $cek = request()->get('username');
            $cek1 = request()->get('email');
            $id = request()->get('id');

            $where = array('id_user' => $id); // Jika id_user adalah kunci utama untuk menentukan record


            $isi = array(
                'username' => $cek,
                'email' => $cek1,
            );

            $model->edit('tb_user', $isi, $where);
            return redirect()->to('Home/profile');
            // print_r($yoga);
            // print_r($id);
        } else {
            return redirect()->to('Home/login');
        }
    }
public function editfoto()
{
    $model = new Gudang(); // Pastikan model ini menangani tabel tb_user
    $this->log_activity('Mengedit Foto');
    
    // Ambil user saat ini dari session
    $userId = session()->get('id_user');
    $userData = $model->getById($userId); // Pastikan ini mengambil data user dengan benar

    // Cek apakah file di-upload
    if (request()->hasFile('foto')) {
        $file = request()->file('foto');
        
        if ($file->isValid()) {
            // Generate nama file baru
            $newFileName = $file->getClientOriginalName(); // Menggunakan nama asli file
            $file->move(public_path('images/img/'), $newFileName); // Simpan ke file system
            
            // Jika ada foto lama, hapus
            if ($userData->foto_profile && file_exists(public_path('images/img/' . $userData->foto_profile))) {
                unlink(public_path('images/img/' . $userData->foto_profile));
            }
            
            // Update database dengan nama file baru
            $userDataUpdate = ['foto_profile' => $newFileName];
            $model->edit('tb_user', $userDataUpdate, ['id_user' => $userId]);
        }
    }

    return redirect()->to('Home/profile')->with('status', 'Foto berhasil diperbarui');
}
public function deletefoto()
{
    $model = new Gudang(); // Pastikan model ini menangani tabel tb_user
    $this->log_activity('Menghapus Foto Profil');

    // Ambil ID user dari form
    $userId = request()->input('id');

    // Ambil data user dari database
    $userData = $model->getById($userId);

    // Pastikan userData valid
    if ($userData && $userData->foto_profile) {
        // Hapus file gambar dari file system
        $filePath = public_path('images/img/' . $userData->foto_profile);
        if (file_exists($filePath)) {
            unlink($filePath);
        }

        // Update database untuk menghapus nama file gambar
        $userDataUpdate = ['foto_profile' => null];
        $model->edit('tb_user', $userDataUpdate, ['id_user' => $userId]);
    }

    return redirect()->to('Home/profile')->with('status', 'Foto profil berhasil dihapus');
}
    public function register()
    {
        $model = new Gudang;
        $where = array('id_setting' => 1);
        $data['setting'] = $model->getWhere('tb_setting',$where);
       
        echo view ('header',$data);
        echo view ('register',$data);
        
    }
public function aksi_register(Request $request)
{
    $model = new Gudang();
    
    $a = $request->input('username');
    $b = $request->input('password');
    $c = $request->input('email');

    $isi = array(
        'username' => $a,
        'password' => md5($b),
        'email' => $c,
         'create_at' => date('Y-m-d H:i:s'),
        'id_level' => 2
    );

    $model->tambah('tb_user', $isi);

    return redirect()->to('Home/login');
}
        public function changepassword()
    {
        if (session()->get('id_level') > 0) {

            $model = new Gudang();
            $this->log_activity('Mengubah Password');
            $where = array('id_setting' => 1);
            $data['setting'] = $model->getWhere('tb_setting',$where);
            $where = array('id_user' => session()->get('id_user'));
            $data['dennis'] = $model->getwhere('tb_user', $where);
            
            echo view('header', $data);
            echo view('changepassword', $data);
           
        } else {
            return redirect()->to('Home/login');
        }
    }
public function aksi_changepass(Request $request) 
{
    $model = new Gudang();
    $oldPassword = $request->input('old'); // Ambil data dari request
    $newPassword = $request->input('new');
    $userId = session()->get('id_user'); // Ambil id_user

    // Dapatkan password lama dari database
    $currentPassword = $model->getPassword($userId);

    // Verifikasi apakah password lama cocok
    if (md5($oldPassword) !== $currentPassword) {
        // Set pesan error jika password lama salah
        session()->flash('error', 'Password lama tidak valid.');
        return redirect()->back()->withInput();
    }

    // Update password baru
    $data = [
        'password' => md5($newPassword),
        'update_by' => $userId,
        'update_at' => now()
    ];
    $where = ['id_user' => $userId];

    $model->edit('tb_user', $data, $where);
    
    
    // Set pesan sukses
    session()->flash('success', 'Password berhasil diperbarui.');
    session()->flush();
    return redirect()->to('Home/login');
}

    public function lockscreen()
{
    if (session()->get('id_level') > 0) {
        $model = new Gudang();
        $where = array('id_user' => session()->get('id_user'));
        $data['dennis'] = $model->getwhere('tb_user', $where);
        $where = array('id_setting' => 1);
        $data['setting'] = $model->getWhere('tb_setting', $where);

        $this->log_activity('User membuka Dashboard');

        echo view('header', $data);
        echo view('lockscreen', $data); // Kirim data ke view
    } else {
        return redirect()->to('Home/login');
    }
}
public function validatePassword(Request $request)
{
    $password = $request->input('password');
    $model = new Gudang();
    $where = [
        'id_user' => session()->get('id_user'),
        'password' => md5($password),
    ];

    $user = $model->getWhere('tb_user', $where);

    if ($user) {
        // Password is correct, set flash message and proceed to dashboard
        session()->flash('success', 'Password correct');
        return redirect()->to('Home/dashboard'); // Redirect to dashboard after successful login
    } else {
        // Password is incorrect, set flash message and reload lockscreen
        session()->flash('error', 'Incorrect password');
        return redirect()->to('Home/lockscreen');
    }
}

   public function kalkulator()
    {
        if (session()->get('id_level')>0) {
        $model=new Gudang;
        $where = array('id_user' => session()->get('id_user'));
        $data['dennis'] = $model->getwhere('tb_user', $where);
        $where = array('id_setting' => 1);
        $data['setting'] = $model->getWhere('tb_setting', $where);
        $this->log_activity('User membuka Daftar Menu');
        
        echo view('header',$data);
        echo view('menu',$data);
        echo view('kalkulator',$data);
        echo view('footer');
        // print_r($data);
    }else{
        return redirect()->to('Home/login');
    }
    }
}

