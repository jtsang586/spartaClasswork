$(function(event){
//Create Noughts and Crosses Game
//Global variables
var playerTurn = true;
var counter = null;
var player1WinConditions = [[0,1,2],[3,4,5],[6,7,8],[0,3,6],[1,4,7],[2,5,8],[0,4,8],[2,4,6]];
var player2WinConditions = [[0,1,2],[3,4,5],[6,7,8],[0,3,6],[1,4,7],[2,5,8],[0,4,8],[2,4,6]];
//array of all boxes
var boxes= $("td");

$(boxes).each(function(index, box){
  console.log($(box).attr("data-num")); //data-num
  $(box).on("click", function(){
    if (playerTurn == true){
    display("It is O's turn");
    var player1Choise = parseInt(($(box).attr("data-num")));
    console.log("player 1", player1Choise);  
    $(box).addClass("X").html("X");
    playerTurn = false; 
    player1WinConditions = checkWin(player1Choise, player1WinConditions);
    console.log(player1WinConditions);
    }
    else if(playerTurn == false) { 
    display("It is X's turn");
    var player2Choise = parseInt(($(box).attr("data-num")));
    console.log("player 2", player2Choise);  
    $(box).addClass("O").html("O");
    playerTurn = true; 
    player2WinConditions = checkWin(player2Choise, player2WinConditions);
    console.log(player2WinConditions);

    }
    counter++
    console.log(counter);
    if (counter == 9 && ){
      draw();
    }
  })
})
//reset button

$("#reset").on("click", clear)

//Create functions
function checkWin (playerChoise, winConditions){
  for (var i = 0; i < winConditions.length; i++) {
    for (var j = 0; j < winConditions[i].length; j++) {
      if (winConditions[i][j] == playerChoise) {
        winConditions[i].splice(j,1);
        // console.log(winConditions);
      }
      if (winConditions[i].length == 0){
          win();
          console.log("Win!!!");
        }
    }
  }
  // console.log(winConditions);
  return winConditions;
}
function draw(){
  display("It's a draw!!!!!");
}

function win(){
  if (playerTurn == false){
    display("X has Won!!!!!");
  } else {
    display("O has Won!!!!!");
  }
}

function display(text) {
  $(".playerTurn").html(text);
}

function clear (){
  var player1WinConditions = [[0,1,2],[3,4,5],[6,7,8],[0,3,6],[1,4,7],[2,5,8],[0,4,8],[2,4,6]];
  var player2WinConditions = [[0,1,2],[3,4,5],[6,7,8],[0,3,6],[1,4,7],[2,5,8],[0,4,8],[2,4,6]];
  var playerTurn = true;
  var counter = 0;
  console.log(counter);

  $(boxes).each(function(index, box){
    $(box).removeClass("X").removeClass("O").html("");
  })
}
})
//When no player wins