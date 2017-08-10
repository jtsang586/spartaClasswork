// Setup initial state variables
// Variables defined in global scope, not the best idea
var number1 = 0;
var number2 = 0;
var result =0;
var operatorPressed = false;
var moreDigits = false;
var opString;

var numberButtons = document.getElementsByClassName("number");

for (var i = 0; i < numberButtons.length; i++){
  var temp = 0;
  numberButtons[i].addEventListener ("click", function(event) {
    temp = parseInt(this.value);
    display(this.value);
    if (operatorPressed == false){
      if (moreDigits == true) {
        number1 = (number1 * 10) + temp;
      }else{ 
      number1 = temp;
      }
      display(number1);
    }else {
      if (moreDigits == true) {
        number2 = (number2 * 10) + temp;
      }else{ 
      number2 = temp;
      }
      display(number2);
    }
    moreDigits = true;
  })
}

var operatorButtons = document.getElementsByClassName("operator");
for (var i = 0; i < operatorButtons.length; i++){
  operatorButtons[i].addEventListener ("click", function(event) {
  if (operatorPressed == true){
    equals();
  }
  operatorPressed = true;
  moreDigits = false;
  temp = 0;
  opString = this.value;
  display(opString);
  })
}

var equalsButton = document.getElementsByClassName("eq");
equalsButton[0].addEventListener("click", equals)

var clearButton = document.getElementsByClassName("clear");
clearButton[0].addEventListener("click", function(event){
  number1 = 0;
  number2 = 0;
  operatorPressed = false;
  display("0");
})
// Setup eventListeners

// Functions for calculator
function calculate(num1, num2){
  var result = 0;
    switch (opString) {
      case ("+"): 
        result = num1 + num2;
        break;
      case ("-"): 
        result = num1 - num2;
        break;
      case ("x"): 
        result = num1 * num2;
        break;
      case ("/"): 
        result = num1 / num2;
        break;
    }
    display(result);
    return result;
  }

function equals(){
  operatorPressed = false;
  moreDigits = false;
  number1 = calculate(number1,number2);
}

function display(text){
  document.getElementsByClassName("display")[0].value = text;
}