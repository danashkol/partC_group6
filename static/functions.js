function paymentAlert(message) {
    if (message == "True") {
        alert("Congrats! Payment completed Successfully!" +
            " You can collect your order from the store in 48 hours!");
    }
    else if (message == "no Cakes"){
        alert("No Cakes in Cart")
    }
    else if (message == "None") {
        console.log("hi");
    }
    else if (message == "deleted"){
        alert("Cake Deleted From Cart")
    }
    else if (message == "False"){
        console.log(message)
        alert('Some details are missing. Please fill all the fields');
    }
}
function signIn_Alert(message) {
    if (message == "no matching") {
        alert("Wrong Username or Password");
    }
    else if (message == "exists"){
        alert("This Username Alraedy Exists. Please Try Again")
    }
    else if (message == "Added"){
        alert('User Added Successfully');
    }
}

function contactAlert(message){
    if (message == "Message received"){
        alert('Message received')
    }
}

function openPopUp(image, cakeName ,price) {
    var popUp = document.getElementById("container");
    var left = document.getElementById("left");
    var photosCategory = document.getElementById("photosCategory");
    var name = document.getElementById("name");
    var btn = document.getElementById("close");
    document.querySelector('input[name="cakeName"]').value = cakeName;
    document.querySelector('input[name="StartPrice"]').value = price;
    document.querySelector('input[name="Oname"]').value = cakeName;
    console.log(document.querySelector('input[name="Oname"]').value);
    console.log(document.querySelector('input[name="StartPrice"]').value);
    popUp.style.visibility = "visible";
    btn.style.visibility = "visible";
    photosCategory.style.filter = "blur(10px)";
    left.classList.add("open-left");
    TotalPrice.innerHTML = price;
    name.innerHTML = cakeName;
    document.getElementById("oleft").src = image;
    totalIt()
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
    let TotalP = parseInt(document.querySelector('input[name="StartPrice"]').value);
    var input1 = document.getElementById("Element1");
    var input2 = document.getElementById("Element2");
    var input3 = document.getElementById("Element3");
    var size = document.getElementById("Size").value;

    if(input1.checked){
        TotalP += parseFloat(input1.value);

    }
    if(input2.checked){
        TotalP += parseFloat(input2.value);

    }
    if(input3.checked){
        TotalP += parseFloat(input3.value);

    }
    TotalP += parseFloat(size);

    TotalPrice.innerHTML = TotalP;
    // TPrice.innerHTML = TotalP;
    document.querySelector('input[name="OPrice"]').value = TotalP

    console.log(document.querySelector('input[name="OPrice"]').value)
    console.log(document.querySelector('input[name="StartPrice"]').value)
    // console.log(TotalPrice.innerHTML)


}
function totalIt2() {
    let TotalP = parseInt(document.querySelector('input[name="StartPrice"]').value);
    var input1 = document.getElementById("Element1");
    var input2 = document.getElementById("Element2");
    var input3 = document.getElementById("Element3");
    var size = document.getElementById("Size").value;
    var numOfCakes = document.getElementById("Letters").value.length;

    if(input1.checked){
        TotalP += parseFloat(input1.value);

    }
    if(input2.checked){
        TotalP += parseFloat(input2.value);

    }
    if(input3.checked){
        TotalP += parseFloat(input3.value);

    }
    TotalP += parseFloat(size);
    if(numOfCakes==0){TotalP = TotalP*1;}
    else{TotalP = TotalP*numOfCakes}
    TotalPrice.innerHTML = TotalP;
    document.querySelector('input[name="OPrice"]').value = TotalP
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

function OrderId2Delete(ID) {
    // console.log(document.querySelector('input[name="ORDER2DELETE"]').value)
    document.querySelector('input[name="ORDER2DELETE"]').value = ID
    // console.log(document.querySelector('input[name="ORDER2DELETE"]').value)
}