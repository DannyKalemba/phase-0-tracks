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
//Go through second object and check if keys match
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