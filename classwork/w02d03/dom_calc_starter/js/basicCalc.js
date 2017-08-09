//Set initial state variables
//find numbers
var numbers = document.getElementsByClassName("number");
//find operator
var operators = document.getElementsByClassName("operator");
//find equals
var eq = document.getElementsByClassName("eq")[0];
//find clear
var clear = document.getElementsByClassName("clear")[0];
//find display
var display = document.getElementsByClassName("display")[0];
//variable for first number in calculation
var first_number = null;
//variable for second number in calculation
var second_number = null;
//variable for operator clicked
var operator = null;
//variable for answer of calculations
var answer = null;
//---------------------------------------------------------------------
//set up event listeners
function setupEventListeners(){
  //numbers event listeners
  for (var i = 0; i < numbers.length; i++){
    numbers[i].addEventListener("click", updateAndDisplayNum)
  }
  //operators event listeners
  for (var i = 0; i < operators.length; i++){
    operators[i].addEventListener("click", updateAndDisplayOperator)
  }
  //equals event listeners
  eq.addEventListener("click", function(){
    calculation(first_number,operator, second_number);
  })
  //clear event listeners
  clear.addEventListener("click", clearCal)
}


//Functions for calculator

//add

//subtract

//multiply

//divide

//---------------------------------------------------------------------

//calculation
function calculation(firstNumber, operator, secondNumber){
}


//---------------------------------------------------------------------

//clear the calculator
function clearCal(){
}
//display and store the buttons clicked
function updateAndDisplayNum(){
}

//display and store the operator
function updateAndDisplayOperator(){
}

setupEventListeners();
