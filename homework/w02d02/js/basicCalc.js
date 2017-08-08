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
  var bigTemp = 0;
  numberButtons[i].addEventListener ("click", function(event) {
    switch (this.value) {
      case ("0"):
        temp = 0;
        display("0");
        break;
      case ("1"): 
        temp = 1;
        display("1");
        break;
      case ("2"):
        temp = 2;
        display("2");
        break;
      case ("3"):
        temp = 3;
        display("3");
        break;
      case ("4"):
        temp = 4;
        display("3");
        break;
      case ("5"):
        temp = 5;
        display("5");
        break;
      case ("6"):
        temp = 6;
        display("6");
        break;
      case ("7"):
        temp = 7;
        display("7");
        break;
      case ("8"):
        temp = 8;
        display("8");
        break;
      case ("9"):
        temp = 9;
        display("9");
        break;
      }
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
  operatorPressed = true;
  moreDigits = false;
  temp = 0;
    switch (this.value) {
      case ("+"):
        opString = "+";
        display("+")
        break;
      case ("-"):
        opString = "-";
        display("-");
        break;
      case ("/"):
        opString = "/";
        display("/");
        break;
      case ("x"):
        opString = "x";
        display("x");
        break;
     }
  })
}

var equalsButton = document.getElementsByClassName("eq");
equalsButton[0].addEventListener("click", function(event) {
  operatorPressed = false;
  moreDigits = false;
  number1 = calculate(number1,number2);
})

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

function display(text){
  document.getElementsByClassName("display")[0].value = text;
}