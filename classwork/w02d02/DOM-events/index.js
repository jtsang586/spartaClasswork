document.addEventListener('DOMContentLoaded', function() {

  var form = document.getElementById("myForm");

  form.addEventListener("submit", function(event){
    event.preventDefault();
    var textField = document.getElementById("formtext");
    if (!textField.value) {
      "Must enter something";
    } else {
      var box = document.createElement("div");
      box.innerHTML = textField.value;
      form.appendChild(box);
    }
  })

})
