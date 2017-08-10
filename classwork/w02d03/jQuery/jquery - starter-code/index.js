$(function(event) {
  console.log("DOM is ready");
  var count = $("#count");
  var items = $("li");
  var done = $("li.done")
  console.log(done);
  var li = $("<li>NewItem</li>");
  $("#list").prepend(li);

  // var todos = ["Food Shop", "wash clothes", "Pay Bills"];

  // $(todos).each(function(index,todo) {
  //   console.log(todo);
  // })
  var a = $("count").html();
  $("#count").html("5");

  $("#count").css("color", "green");

  $("li").addClass("done");

  $("#count").html("10").css("color", "red");

  var button = $("<button id='myButton'>Click</button>");
  $("body").append(button);

  $('#myButton').on("click", function (){
    console.log("Button clicked");
  })
})