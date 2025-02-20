<!DOCTYPE html>
<html lang="id">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Kalkulator Standar</title>
    <link rel="stylesheet" href="path/to/your/styles.css">
    <style>
      .content-body {
    padding: 20px;
}

.calculator {
    width: 500px;
    min-height: 500px; 
    background: #fff;
    padding: 20px;
    border-radius: 10px;
    box-shadow: 0 4px 10px rgba(0, 0, 0, 0.2);
    text-align: center;
    margin: auto;
    display: flex;
    flex-direction: column;
    justify-content: space-between;
}

.display {
    width: 100%;
    height: 80px; 
    text-align: right;
    font-size: 36px; 
    padding: 10px;
    margin-bottom: 15px;
    border: none;
    background: #e3e3e3;
    border-radius: 5px;
}

.buttons {
    display: grid;
    grid-template-columns: repeat(4, 1fr);
    gap: 10px; 
}

button {
    
    height: 70px; 
    font-size: 22px; 
    border: none;
    cursor: pointer;
    background: #f9f9f9;
    border-radius: 5px;
    transition: 0.2s;
}

button:hover {
    background: #ddd;
}

/*button.operator {
    background: #ffc107;
    color: white;
}*/

button.equal {
    background: #2a9d8f;
    color: white;
}

button.clear {
    background: #e76f51;
    color: white;
}
.history {
    width: 250px;
    height: 500px;
    background: #f9f9f9;
    padding: 20px;
    margin-left: 20px; 
    border-radius: 10px;
    box-shadow: 0 4px 10px rgba(0, 0, 0, 0.2);
    text-align: left;
    display: flex;
    flex-direction: column;
}

.history h3 {
    text-align: center;
    margin-bottom: 10px;
}

.history ul {
    list-style: none;
    padding: 0;
    flex-grow: 1; 
    overflow-y: auto; 
}

.history li {
    padding: 8px;
    border-bottom: 1px solid #ccc;
    font-size: 16px;
}

.clear-history {
    width: 100%;
    padding: 10px;
    margin-top: 10px;
    background: #e76f51;
    color: white;
    border: none;
    cursor: pointer;
    border-radius: 5px;
}

    </style>
</head>
<body>

<div class="content-body">
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-15 d-flex">
              
                <div class="calculator">
                    <input type="text" id="display" class="display" value="0" disabled>
                    <div class="buttons">
                        <button onclick="clearDisplay()" class="clear">C</button>
                        <button onclick="clearEntry()">CE</button>
                        <button onclick="backspace()">⌫</button>
                        <button onclick="appendValue('/')" class="operator">÷</button>
                        <button onclick="appendValue('7')">7</button>
                        <button onclick="appendValue('8')">8</button>
                        <button onclick="appendValue('9')">9</button>
                        <button onclick="appendValue('*')" class="operator">×</button>
                        <button onclick="appendValue('4')">4</button>
                        <button onclick="appendValue('5')">5</button>
                        <button onclick="appendValue('6')">6</button>
                        <button onclick="appendValue('-')" class="operator">−</button>
                        <button onclick="appendValue('1')">1</button>
                        <button onclick="appendValue('2')">2</button>
                        <button onclick="appendValue('3')">3</button>
                        <button onclick="appendValue('+')" class="operator">+</button>
                        <button onclick="toggleSign()">+/-</button>
                        <button onclick="appendValue('0')">0</button>
                        <button onclick="appendValue('.')">.</button>
                        <button onclick="calculateResult()" class="equal">=</button>
                    </div>
                </div>

            
                <div class="history">
                    <h3>Riwayat</h3>
                    <ul id="history-list"></ul>
                    <button onclick="clearHistory()" class="btn btn-danger ti-trash" class="clear-history"></button>
                </div>
            </div>
        </div>
    </div>
</div>


   <script>
function appendValue(value) {
    let display = document.getElementById("display");
    let lastChar = display.value.slice(-1);
    let operators = ["+", "-", "*", "/"];

    if (display.value === "0") {
        display.value = value;
    } else if (display.value === "Cannot divide by zero") {
        display.value = value;
    } else {
        if (operators.includes(lastChar) && operators.includes(value)) {
            display.value = display.value.slice(0, -1) + value;
        } else {
            display.value = removeCommas(display.value) + value;
        }
    }
    
    display.value = formatNumber(display.value);
}

function formatNumber(value) {
    return value.replace(/\B(?=(\d{3})+(?!\d))/g, ","); 
}

function removeCommas(value) {
    return value.replace(/,/g, "");
}

document.getElementById("display").removeAttribute("disabled");

document.getElementById("display").addEventListener("input", function (event) {
    let validChars = /[0-9+\-*/.]/;
    let newValue = event.target.value.split("").filter(char => validChars.test(char)).join("");

    event.target.value = newValue; 
});


document.getElementById("display").addEventListener("keydown", function (event) {
    let allowedKeys = ["Backspace", "Delete", "ArrowLeft", "ArrowRight", "Enter", "Escape"];
    let validKeys = "0123456789+-*/.".split("");

    if (!allowedKeys.includes(event.key) && !validKeys.includes(event.key)) {
        event.preventDefault();
    }

    
    if (event.key === "Enter") {
        calculateResult();
    }
});


function toggleSign() {
    let display = document.getElementById("display");
    let value = display.value.trim();

    if (value === "" || value === "0" || value === "Cannot divide by zero") {
        return;
    }

    let parts = value.match(/(\d+\.?\d*|-?\d+\.?\d*|[+\-*/])/g); 

    if (!parts) return;

 
    for (let i = parts.length - 1; i >= 0; i--) {
        if (!isNaN(parts[i])) {
            if (i > 0 && parts[i - 1] === "-") {
                parts.splice(i - 1, 1); 
            } else if (i === 0 || isNaN(parts[i - 1])) {
                parts.splice(i, 0, "-"); 
            } else {
                parts[i] = "-" + parts[i]; 
            }
            break;
        }
    }

    display.value = parts.join(""); 
}



function clearEntry() {
    let display = document.getElementById("display");
    let value = display.value.trim();

  
    if (value === "" || value === "Cannot divide by zero") {
        display.value = "0";
        return;
    }

 
    let parts = value.split(/([+\-*/])/);

   
    if (parts.length > 1) {
        parts.pop();
        display.value = parts.join("");
    } else {
        display.value = "0"; 
    }
}



function clearDisplay() {
    document.getElementById("display").value = "0";
}


function backspace() {
    let display = document.getElementById("display");
    display.value = display.value.slice(0, -1);

    if (display.value === "") {
        display.value = "0";
    }
}

function calculateResult() {
    try {
        let display = document.getElementById("display");
        let expression = removeCommas(display.value);

        if (!/[+\-*/]/.test(expression)) return;

        expression = expression.replace(/--/g, "+");

        if (expression.match(/\/0(\D|$)/) && !expression.includes("/0.")) { 
            display.value = "Cannot divide by zero";
            return;
        }

        let result = eval(expression);
        result = parseFloat(result.toFixed(2));

        display.value = formatNumber(result.toString());

        addToHistory(expression + " = " + formatNumber(result.toString()));
    } catch (e) {
        alert("Input tidak valid");
        clearDisplay();
    }
}



function addToHistory(entry) {
    let historyList = document.getElementById("history-list");
    let li = document.createElement("li");
    li.textContent = entry;
    
  
    li.onclick = function () {
        let expression = entry.split("=")[0].trim(); 
        document.getElementById("display").value = expression;
    };

    historyList.prepend(li);
}


function clearHistory() {
    document.getElementById("history-list").innerHTML = "";
}






</script>

</body>
</html>
