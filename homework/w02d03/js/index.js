//Create Noughts and Crosses Game
//Global variables
var playerTurn = true;
//playerTurn
var winConditions = [[0,1,2],[3,4,5],[6,7,8],[0,3,6],[1,4,7],[2,5,8],[0,4,8],[2,4,6]];
//array for win conditions
//array for player actions
var player1Actions = [];
var player2Actions = [];
//array of all boxes
var boxes= $("td");

$(boxes).each(function(index, box){
  console.log($(box).attr("data-num")); //data-num
  $(box).on("click", function(){
    if (playerTurn == true){
    player1Actions.push($(box).attr("data-num"));
    console.log("player 1", player1Actions);  
    $(box).addClass("X").html("X");
    playerTurn = false; 
    checkWin(player1Actions);
    }
    else if(playerTurn == false) {
    player2Actions.push($(box).attr("data-num"));
    console.log("player 2", player2Actions);  
    $(box).addClass("O").html("O");
    playerTurn = true; 
    checkWin(player2Actions);
    }
  })
})

//Create functions
function addMove(player, num){
  player.push($(box).attr("data-num"));
  console.log(player);  
}

function changePic(){

}

//change backgrounds for squares

function checkWin(playerArray){
  for (var i = 0; i < winConditions.length; i++){
    counter = 0;
    for (var j = 0; j < winConditions[i].length; j++){
      if (winConditions[i][j] == playerArray[counter]){
        counter++;
        if (counter == 3){
          console.log("Win Game!!");
        }
      }
    }
  }
}
//compare win combinations
function draw(){

}
//When no player wins