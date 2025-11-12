const canvas = document.getElementById("gameCanvas");
const ctx = canvas.getContext("2d");
const tileSize = 31;
let score = 0;

const map = [
  [0,0,0,0,0,0,0,0,0,0,0,0,0,0],
  [0,0,0,0,0,0,0,0,0,0,0,0,0,0],
  [0,0,1,1,1,1,0,0,1,1,1,1,0,0],
  [0,0,1,0,2,2,2,0,1,2,2,2,0,0],
  [0,0,1,1,1,1,2,0,1,1,1,1,0,0],
  [0,0,0,0,0,1,2,0,1,2,2,2,0,0],
  [0,0,1,1,1,1,2,0,1,1,1,1,0,0],
  [0,0,2,2,2,2,2,0,2,2,2,2,2,0],
  [0,0,1,1,0,0,0,1,0,1,1,1,2,0],
  [0,0,1,2,1,0,0,1,0,1,0,1,2,0],
  [0,0,1,0,2,1,0,1,0,1,0,1,2,0],
  [0,0,1,2,0,2,1,1,0,1,1,1,2,0],
  [0,0,1,0,2,2,2,1,0,1,2,1,2,0],
  [0,0,0,0,1,0,0,0,0,0,2,1,2,0],
  [0,0,0,0,1,0,0,1,0,0,2,2,2,0],
  [0,0,0,0,0,0,0,0,0,0,0,0,0,0],
];

function dibujarMapa() {
   for (let row = 0; row < map.length; row++) {
    for (let col = 0; col < map[row].length; col++) {
        const tile = map[row][col];const x = col * tileSize;
        const y = row * tileSize

        if (tile === 1) {
            ctx.fillStyle = "blue";
            ctx.fillRect(col * tileSize, row * tileSize, tileSize, tileSize);
            
        }else{
            ctx.fillStyle = "black";
            ctx.fillRect(col * tileSize, row * tileSize, tileSize, tileSize);
            if (tile === 2) {
                ctx.fillStyle = "yellow";
                ctx.beginPath();
                ctx.arc(
                    x + tileSize/2,
                    y + tileSize/2,
                    tileSize/8,
                    0,
                    Math.PI*2
                );
                ctx.fill();
            }
        }   
    }
   }
}

ctx.fillStyle = "black"
ctx.fillRect(0,0, canvas.width, canvas.height);

ctx.fillStyle = "yellow";
ctx.beginPath();
ctx.arc(100, 100, 25, 0.2 * Math.PI, 1.9 * Math.PI);
ctx.lineTo(100,100);
ctx.fill();
console.log("Juego iniciado correctamente");

const player = {
    x:100,
    y: 100,
    size: 26,
    speed: 3
}
// si no funciona se cambia a keys
const teclas ={
    ArrowUp: false,
    ArrowDown:  false,
    ArrowLeft: false,
    ArrowRight: false,
    Space: false
}
// si no funciona se cambia a keys
document.addEventListener("keydown", (e) => {
    if (teclas.hasOwnProperty(e.key)) {
        teclas[e.key] = true;
    }
});

document.addEventListener("keyup", (e) => {
    if (teclas.hasOwnProperty(e.key)) {
        teclas[e.key] = false;
    }
});
        
    
function actualizarJugador() {
    if (teclas.ArrowUp) player.y -= player.speed;
    if (teclas.ArrowDown) player.y += player.speed;
    if (teclas.ArrowLeft) player.x -= player.speed
    if (teclas.ArrowRight) player.x += player.speed
    
        
    const col = Math.floor(player.x / tileSize);
    const row = Math.floor(player.y / tileSize);
    if (map[row][col] === 2) {
        map[row][col] = 0;
        score += 10;
    }
    // limites
    if (player.x <0) player.x = 0;
    if (player.y <0) player.y = 0;
    if (player.x + player.size > canvas.width) player.x = canvas.width - player.size;
    if (player.y + player.size > canvas.height) player.y = canvas.height - player.size


}

function dibujarpuntuacion() {
    ctx.fillStyle = "white";
    ctx.font = "20px Arial"
    ctx.fillText("Puntuación: " + score, 10, 20);
}
function dibujarAlJugador() {
    ctx.fillStyle = "pink";
    ctx.beginPath();
    ctx.arc(
        player.x + player.size/2,
        player.y + player.size/2,
        player.size/2,
        0.2 * Math.PI,
        1.8 * Math.PI
    );
    ctx.lineTo(player.x + player.size/2, player.y + player.size/2 );
    ctx.fill();
    
}

function gameLoop() {
    ctx.clearRect(0,0, canvas.width, canvas.height);
    dibujarMapa();
    actualizarJugador();
    dibujarAlJugador();
    dibujarpuntuacion();
    requestAnimationFrame(gameLoop);
    

}

gameLoop();

/*

document.addEventListener("keydown", function(e) {
  if (e.key === "ArrowUp") {
    pacman.y -= 5;
  }
});
document.addEventListener("keydown", function(e) {
    if (e.key === "ArrowDown") {
        pacman.y -= 5;
    }   
})


const map = [
  [1,1,1,1,1,1],
  [1,0,0,0,0,1],
  [1,0,1,0,0,1],
  [1,0,0,0,0,1],
  [1,1,1,1,1,1]
];


// 1 muro y 0 espacio vacio
let score = 0;
score  += 10;
ctx.fillText("Puuntts: " + score, 10, 20);
let playerX = 50;
let playerY = 100;
function movePlayer() {
    playerX += 1; // mover a la derecha
    
}


    */