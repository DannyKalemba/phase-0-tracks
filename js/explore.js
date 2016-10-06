//Take in new string as a parameter to the function
//Create a new string that will be the old one reversed
//Move each letter to the correct position
//return the new string



function reverse(word){
  var wordArray = word.split("");
  var wordReversed = [];
  for(var i = 0; i < word.length; i++){
    wordReversed.unshift(wordArray[i]);
  }
  return wordReversed.join("");
}

console.log(reverse("hello"));

var wordBackwards = reverse("bootcamp");

if (10 == 10){
  console.log(wordBackwards);
}