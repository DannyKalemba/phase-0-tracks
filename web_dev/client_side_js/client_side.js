console.log("test");

var sidebar = document.getElementById('cast');

sidebar.style.border = "5px solid orange";


function hide_director(event){
  document.getElementsByClassName('director')[0].hidden = true;
}


addEventListener("keydown", hide_director);