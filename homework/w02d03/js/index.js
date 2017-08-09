//Create Noughts and Crosses Game
//Global variables
var playerTurn = true;
//playerTurn
var winConditions = [[0,1,2],[3,4,5],[6,7,8],[0,3,6],[1,4,7],[2,5,8],[0,4,8],[2,4,6]];
//array for win conditions
//array for player actions
var player1WinConditions = winConditions;
var player2WinConditions = winConditions;
//array of all boxes
var boxes= $("td");

$(boxes).each(function(index, box){
  console.log($(box).attr("data-num")); //data-num
  $(box).on("click", function(){
    if (playerTurn == true){
    var player1Choise = parseInt(($(box).attr("data-num")));
    console.log("player 1", player1Choise);  
    $(box).addClass("X").html("X");
    playerTurn = false; 
    player1WinConditions = checkWin(player1Choise, player1WinConditions);
    }
    else if(playerTurn == false) { 
    var player2Choise = parseInt(($(box).attr("data-num")));
    console.log("player 2", player2Choise);  
    $(box).addClass("O").html("O");
    playerTurn = true; 
    player2WinConditions = checkWin(player2Choise, player2WinConditions);
    }
  })
})

//Create functions

function changePic(){

}
function checkWin (playerChoise, winConditions){
  for (var i = 0; i < winConditions.length; i++) {
    for (var j = 0; j < winConditions[i].length; j++) {
      if (winConditions[i][j] == playerChoise) {
        winConditions[i].splice(j,1);
        console.log(winConditions);
      }
      if (winConditions[i].length == 0){
          console.log("Win!!!");
        }
    }
  }
  return winConditions;
}
function draw(){

}
//When no player wins