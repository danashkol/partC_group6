

function openPopUp(image, cakeName) {
    var popUp = document.getElementById("container");
    var left = document.getElementById("left");
    var photosCategory = document.getElementById("photosCategory");
    var name = document.getElementById("name");
    var btn = document.getElementById("close");
    popUp.style.visibility = "visible";
    btn.style.visibility = "visible";
    photosCategory.style.filter = "blur(10px)";
    left.classList.add("open-left");
    name.innerHTML = cakeName;
    document.getElementById("oleft").src = image;
}

function closePopUp() {
    var popUp = document.getElementById("container");
    var left = document.getElementById("left");
    var photosCategory = document.getElementById("photosCategory");
    var name = document.getElementById("name");
    var btn = document.getElementById("close");

    popUp.style.visibility = "hidden";
    btn.style.visibility = "hidden";
    photosCategory.style.filter = "blur(0px)";
    left.classList.remove("open-left");
}

const activePage = window.location.pathname;
const navLinks = document.querySelectorAll('nav a').forEach(link => {
  if(link.href.includes(`${activePage}`)){
    link.classList.add('active');
    console.log(activePage);
  }
})

var myForm = document.getElementById("payment")
var submitBtuttom = document.getElementById("btn");


var CardNumber = document.getElementById("card-number");
var CardHolder = document.getElementById("cardHolder");
var ExpiredM = document.getElementById("ExpiredM");
var ExpiredY = document.getElementById("ExpiredY");
var cvc = document.getElementById("cvc");

let today = new Date();
let month = today.getMonth() +1;
let year = today.getFullYear() ;
console.log(month);
console.log(year);

function mymessage(){

    if (CardHolder.value == "" ) {
        window.alert("name is required");
     }
    else if (CardNumber.value.length < 16 || !CardNumber.value.match(/^\d+/))  {
        window.alert('Card number must be 16 digits');
      
    }
    else if (ExpiredM.value.length <= 1 || !ExpiredM.value.match(/^\d+/) ) {
        window.alert('A month must contain two digits' || !CardHolder.value.match(/^\d+/) );
    }
    else if (ExpiredY.value.length <= 3 || !ExpiredY.value.match(/^\d+/) ) {
        window.alert('A year must contain four digits');
    }
    else if (cvc.value.length <= 2 || !cvc.value.match(/^\d+/) ) {
        window.alert('A cvc must contain 3 digits');
    }
    else if( ExpiredY.value < year ) {
        window.alert('The card has expired');
    }
    else if(ExpiredM.value > 12 ) {
        window.alert('Invalid date');
    }
    else if( ExpiredY.value == year && ExpiredM.value < month ) {
        window.alert('The card has expired');
    }
 
    else{
        submitBtuttom.disabled = true;
        document.getElementById("btn").classList.add('button--loading')
         setTimeout(  myFunction, 3000 );
    }
  
}
function myFunction() {

    submitBtuttom.disabled = false;
    document.getElementById("btn").classList.remove('button--loading')
    myForm.submit();
    CardHolder.value = ""
    ExpiredM.value = ""
    ExpiredY.value = ""
    cvc.value = ""
    CardNumber.value = ""
}

function totalIt() {
    var input = document.getElementsByName("Element");
    var size = document.getElementById("Size").value;
    var count = 0;
    var total = parseFloat(size);
    for (var i = 0; i < input.length; i++) {
      if (input[i].checked) {
        total += parseFloat(input[i].value);
      }
    }
    document.querySelector('input[name="total"]').value = total.toFixed(2);
  }

  function totalIt2() {    
    var input = document.getElementsByName("Element");
    var size = document.getElementById("Size").value;
    var numOfCakes = document.getElementById("numOfCakes").value;
    if(numOfCakes == 0){numOfCakes = 1;}
    var total = parseFloat(size)*numOfCakes;
    for (var i = 0; i < input.length; i++) {
      if (input[i].checked) {
        total += parseFloat(input[i].value);
      }
    }
    document.querySelector('input[name="total"]').value = total;
  }

  function checkIfLoged(){
    if (sessionStorage['logedin'] == false){
        alert("you must log in")
    }
  }
// function move(){
// var cake_Price = document.getElementById("cakeTprice");
// var cake_Name = document.getElementById("name");
// localStorage.setItem("cname",cake_Name);
// localStorage.setItem("price", cake_Price);
// console.log(cake_Name);
// }

// document.getElementById("cakePriceP").innerHTML = localStorage.getItem("price");
// document.getElementById("name").innerHTML = localStorage.getItem("cname");

