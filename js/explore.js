//Take in new string as a parameter to the function
//Create a new string that will be the old one reversed
//Move each letter to the correct position
//return the new string



function reverse(word){
  var wordArray = word.split("");
  var wordReversed = [];
  for(var i = 0; i < word.length; i--){
    wordReversed.unshift(wordArray[i]);
  }
  wordReversed.toString();
  return wordReversed;
}

console.log(reverse("hello"));