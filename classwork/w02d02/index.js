// var listItems = ["Go out","Come back" , "Buy food" , "Eat food"];


// function addListItem(value) {

  

// }

// write append loop here


// write the class loop here

// var selected = document.querySelectorAll("li.selected");

// console.log(selected);

// // selected[0].innerHTML = "Hello Niall";

// for (var i = 0; i < selected.length; i++) {
//   selected[i].innerHTML = "Hello Niall";
// }

// var pTag = document.createElement('p');

// pTag.innerHTML = "Hello Niall, this is a new p tag. You are welcome.";

// document.getElementById("wrapper").appendChild(pTag);

var list = ["Niall", "Ollie", "Richard", "Steve", "Tim", "Lexie", "Rob", "Kieren" ];
var ul = document.getElementById("list");
console.log(ul);

function addNewLi(text) {
  var newLi = document.createElement("li");
  newLi.innerHTML = text;
  ul.appendChild(newLi);
}

for (var i = 0; i < list.length; i++) {
  addNewLi(list[i]);
}

var newList = document.getElementsByTagName("li");

for (var i = 0; i < newList.length; i++){
  if (i % 2 === 0) {
    newList[i].classList.add("even");
  }
}

var countSpan = document.getElementById('count');
countSpan.innerHTML = newList.length;