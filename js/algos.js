//compare the length of each item to a string
//if item is longer than string replace string
//return the string

function longest(arr){
  var longestString = ""
  for (i = 0; i < arr.length; i++){
    if (arr[i].length > longestString.length){
      longestString = arr[i];
    }
  }
  return longestString;
}

function



array = ["one", "whoa", "times", "two", "july"];
arrayTwo =["holy smokes", "this", "is", "a", "test"];
arrayThree = ["wow", "hmm", "this works"]
console.log(longest(array));
console.log(longest(arrayTwo));
console.log(longest(arrayThree));

