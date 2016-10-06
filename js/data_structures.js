var colors = ["blue", "green", "red", "orange"];
var names = ["Ed", "Bob", "Joe", "John"];

colors.push("white")
names.push("Jack")

var horse = {}

for (var i = 0; i < colors.length; i++){
  horse[names[i]] = colors[i];
}

console.log(horse)

function Car(model, year, color){
  this.model = model;
  this.year = year;
  this.color = color;

  this.engine = function() {console.log("Vroom Vroom");};

}

var carOne = new Car("Honda", 2000, "silver");
var carTwo = new Car("Acura", 2011, "black");

console.log(carOne);
console.log(carTwo);

carOne.engine();
