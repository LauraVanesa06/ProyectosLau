var id = document.getElementById('id')
var button = document.getElementById('button')
button.addEventListener('click', function(){
  var inputId = id.value;

  fetch('https://jsonplaceholder.typicode.com/todos/' + inputId)
  .then(response => response.json())
  .then(json => {
    var a = document.querySelector("body > center > main > table > tbody > tr:nth-child(2) > td:nth-child(2)");
    a.innerHTML = json.id;

    var b =document.querySelector("body > center > main > table > tbody > tr:nth-child(3) > td:nth-child(2)");
    b.innerHTML = json.title;

    var c = document.querySelector("body > center > main > table > tbody > tr:nth-child(4) > td:nth-child(2)")
    c.innerHTML = json.completed;

  })
})