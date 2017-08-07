var moneyInPocket = parseInt(prompt ("how much ya got"));

if (moneyInPocket > 10) {
  console.log ("Another drink please");
} else if (moneyInPocket > 5 && moneyInPocket < 10){
  console.log ("Just a half");
} else {
  console.log ("Get me an uber");
}

switch (moneyInPocket) {
  case 10 : 
    console.log ("shandy");
    break;
  case 20 :
    console.log ("Jaegerbomb");
    break;
  case 30 :
    console.log ("prosecco");
    break;
  default:
    console.log ("Champers");
}