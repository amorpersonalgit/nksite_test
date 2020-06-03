// javascript gets elemants by id
var menu = document.getElementById("menu");
var nav = document.getElementById("nav");
var exit = document.getElementById("exit");

// On click toggle prevent default for hide-mobile class
menu.addEventListener("click", function (e) {
  nav.classList.toggle("hide-mobile");
  e.preventDefault();
});

// On click toggle defaults for hide-mobile
exit.addEventListener("click", function (e) {
  nav.classList.toggle("hide-mobile");
  e.preventDefault();
});
