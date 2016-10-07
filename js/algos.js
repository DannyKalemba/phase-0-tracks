//compare the length of each item to a string
//if item is longer than string replace string
//return the string

function Longest(arr){
  var longestString = ""
  for (i = 0; i < arr.length; i++){
    if (arr[i].length > longestString.length){
      longestString = arr[i];
    }
  }
  return longestString;
}

//Go through first object check if key matches second object 
//If key matches check if value matches
function Match(object, objectTwo){
  for (var key in object){
    for(var k in objectTwo){
      if (key === k && object[key] === objectTwo[k] ){
        return true;
      }
    }
  }
  return false;
}

//input a number
//get a random number for the length of each word
//make an array with as many strings as the number input

function RandomTest(int){
  var arr = [];
  var letters = "abcdefghijklmnopqrstuvwxyz"
  for (var i = 0; i < int; i++) {
    var word = ""
    for(var k = 0; k <= Math.floor((Math.random() * 10) + 1); k++){
      var number = Math.floor(Math.random() * 26 );
      word = word + letters.charAt(number);
    }
    arr.push(word)
  }
  return arr;
}

var array = ["one", "whoa", "times", "two", "july"];
var arrayTwo =["holy smokes", "this", "is", "a", "test"];
var arrayThree = ["wow", "hmm", "this works"]
console.log(Longest(array));
console.log(Longest(arrayTwo));
console.log(Longest(arrayThree));

var hash = {age: 54, name: "Steven"};
var hashTwo = {name: "Tamir", age: 54};
var test = {age: 40, name: "Bobby", sex: "male"};
var test2 = {name: "Bob", age: 42};

console.log(Match(hash, hashTwo));
console.log(Match(test, test2));

for (var x = 0; x < 10; x++){
  arr = RandomTest(Math.floor((Math.random() * 10) + 1));
  console.log(arr);
  console.log(Longest(arr));
};
