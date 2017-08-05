var scissors = 1;
var rock = 2;
var paper = 3;

var playerChoice = 0;
var computerChoise = 0;
var playerScore = 0;
var computerScore = 0;

for (i = 0; i <= 5; i++)
{
  playerchoice = prompt("Pick Scissors(1), Rock (2), Paper (3). Type 1, 2 or 3");

  if (playerchoice == 1)
  {
    alert("Player picked Scissors");
  } else if (playerchoice == 2){
    alert("Player picked Rock")
  } else {
    alert("Player picked Paper")
  }
  computerChoise = Math.floor(((Math.random() * 3) + 1));

  if (computerChoise == 1)
  {
    alert("Computer picked Scissors");
  } else if (computerChoise == 2){
    alert("Computer picked Rock")
  } else {
    alert("Computer picked Paper")
  }

  if (playerchoice == computerChoise)
  {
    alert("It's a Draw!!!");
    i--;
  } 
  else if (playerchoice == scissors && computerChoise == paper ||
    playerchoice == rock && computerChoise == scissors ||
    playerchoice == paper && computerChoise == rock)
  {
    alert ("Player Wins!!!!");
    playerScore++;
    if (playerScore == 3)
    {
      alert("Player wins the game!!!");
      break;
    }
  }
  else 
  {
    computerScore++;
    if (computerScore == 3)
    {
      alert ("Computer wins the game!!!");
      break;
    }
  }

  alert("Player score : " + playerScore + ". Computer Score: " + computerScore);
}


