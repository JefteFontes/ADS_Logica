/*
Questão 2 -
console.log("Meu primeiro programa.")
*/
/*
Questão 3 -
let nome = "JEFTÉ FONTES"
console.log(nome)
let idade = 18 
console.log(idade)
let ieieie = null
console.log(ieieie)
*/
function calcularKM(){
    let distancia = parseInt(document.getElementById("distancia").value)
    let tempo = parseInt(document.getElementById("tempo").value)
    document.getElementById("resultado").innerHTML = "Velocidade média foi: "+(distancia / tempo)+" km/h"
}