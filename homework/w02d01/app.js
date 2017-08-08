var playerScore = 0;
var computerScore = 0;
function inputs(name, input) {
  if (input == 1){
    alert (name + " picked Rock");
  } else if (input == 2){
    alert (name + " picked Paper");
  } else if (input == 3){
    alert (name + " picked Scissors");
  } else if (input == 4){
    alert (name + " picked Lizard");
  } else if (input == 5){
    alert (name + " picked Spock");
  } else {
    alert ("Please pick a number from 1 - 5");
    main();
  }
  return input;
}
function comparison (userChoice, computerChoise) {
  if (userChoice == computerChoise) {
    alert("It's a draw!!!")
  } else if (userChoice == 1 && computerChoise == 3 ||
             userChoice == 1 && computerChoise == 4 ||
             userChoice == 2 && computerChoise == 1 ||
             userChoice == 2 && computerChoise == 5 ||
             userChoice == 3 && computerChoise == 4 ||
             userChoice == 3 && computerChoise == 2 ||
             userChoice == 4 && computerChoise == 5 ||
             userChoice == 4 && computerChoise == 2 ||
             userChoice == 5 && computerChoise == 3 ||
             userChoice == 5 && computerChoise == 1) {
    alert ("Player Wins!!!");
    playerScore++;
  } else {
    alert ("Computer Wins!!!");
    computerScore++;
  }
  alert ("The player score is: " + playerScore + " The computer score is: " + computerScore);
  if (playerScore == 3) {
    alert ("Player Wins the Game!!");
  } else if (computerScore == 3){
    alert ("Computer Wins the Game!!");
  }
}
function main () {
while (playerScore != 3 && computerScore != 3) {
  var userChoice = prompt("Choose 1.Rock, 2.Paper, 3.Scissors, 4.Lizard, 5.Spock");
  inputs("Player", userChoice);
  var computerChoise = Math.floor(Math.random() * 5 ) + 1;
  inputs("Computer", computerChoise);
  comparison(userChoice, computerChoise);
  }
}
main ();