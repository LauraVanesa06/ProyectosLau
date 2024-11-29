var id = document.getElementById('id')
var button = document.getElementById('button')


button.addEventListener("click", 
  function buscar() {  

    var inputId = id.value;
    
    fetch('https://jsonplaceholder.typicode.com/todos/'+inputId)
      .then(response => response.json())
      .then(obj => {
        var a = document.querySelector("body > center > table > tbody > tr:nth-child(2) > td:nth-child(2)");
        a.innerHTML = obj.id;
        
        var b = document.querySelector("body > center > table > tbody > tr:nth-child(3) > td:nth-child(2)");
        b.innerHTML = obj.title;

        var c = document.querySelector("body > center > table > tbody > tr:nth-child(4) > td:nth-child(2)");
        c.innerHTML = obj.completed;
    }
      );


  }
)