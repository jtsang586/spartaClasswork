var calc = prompt("Choose a calculator, a) basic, b) BMI, c) advanced, d) Mortgage rate ");

switch(calc) {
  case "a":
    var a = parseInt(prompt( "Enter a number"));

    var op = prompt ("Enter operation: + - * /");

    var b = parseInt(prompt("Enter a second number"));

    switch (op)
    {
      case "+":
        var result = (a + b);
        alert(result);
        break; 
      case "-":
        var result = (a-b);
        alert(result);
        break;
      case "*":
        var result = (a * b);
        alert(result);
        break;
      case "/":
        var result = (a / b);
        alert(result);
        break;
    }
    break;
  case "b":
    var height = prompt( "Enter your height (m)");

    var weight = prompt ("Enter your weight (kg)");

    var bmi = (weight/height)/height;

    alert(bmi);

    break;
  case "c":
    var x = prompt( "Enter your number");

    var square = x**2;
    var sqroot = x**(1/2);

    alert("Square: "+square+", Squareroot: "+sqroot);
    break;
  case "d":
    var r = prompt ("interest rate");
    var P = prompt ("Mortgage");
    //var n = prompt("Mortgage period (years)");

    // var power = time * 12
    // var interestD = interest /12;
    // var top = interestD * ((1 + interestD)**power);
    // var bottom = (interestD**power) -1;
    // var result = mortgage * top / bottom;
    // alert (result);
    // break;

    var dec = (r/100)/12;
    var result = dec*P;

    alert(result);
}
  



//   var a = parseInt(prompt( "Enter a number"));

//   var op = prompt ("Enter operation: + - * /");

//   var b = parseInt(prompt("Enter a second number"));

// // function calculate (a, b, op)
// // {
//   switch (op)
//   {
//     case "+":
//       var result = (a + b);
//       alert(result);
//       break; 
//     case "-":
//       var result = (a-b);
//       alert(result);
//       break;
//     case "*":
//       var result = (a * b);
//       alert(result);
//       break;
//     case "/":
//       var result = (a / b);
//       alert(result);
//       break;
//   }
// }
//   var again = prompt("Calculate again? y/n")
//     if again == 'y'
//     {
//       var op = prompt ("Enter operation: + - * /");

//       var c = parseInt(prompt( "Enter a number")); 
//     } else {
//       break;
//     } 






