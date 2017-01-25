var browserName = navigator.appName; // getting the client's browser's name

/* This function will allow only alphabetical characters and spaces. */
function allowAlphabet(e) {
// Get the ASCII value of the key that the user entered
var key = (document.all) ? window.event.keyCode : e.which;

if ((key >= 65 && key <= 90) || (key >= 97 && key <= 122) || (key == 8) || (key == 32) || (key == 0)) // If it was, then allow the entry to continue
return true;
else { // If it was not, then dispose the key and continue with entry
if (browserName == "Microsoft Internet Explorer") {
event.returnValue = false;
}
else {
return false;
}
}
}

/* This function will restrict user to enter ; and ' and < and > */
function notAllowSpecialCharacters(e) {
// Get the ASCII value of the key that the user entered
var key = (document.all) ? window.event.keyCode : e.which;
if ((key == 39) || (key == 59) || (key == 60) || (key == 62)) // If it was, then dispose the key and continue with entry
{
if (browserName == "Microsoft Internet Explorer") {
event.returnValue = false;
}
else {
return false;
}
}
else {
return true;
}
}

/* This function will allow Numbers in text box - 0 to 5 only */
function allowNumber(evt) {
// Get the ASCII value of the key that the user entered
var charCode = (evt.which) ? evt.which : evt.keyCode

if ((charCode >= 48 && charCode <= 53) || (charCode == 8) || (charCode == 37) || (charCode == 9) || (charCode == 0)) // If it was, then allow the entry to continue
return true;
else { // If it was not, then dispose the key and continue with entry
if (browserName == "Microsoft Internet Explorer") {
event.returnValue = false;
}
else {
alert("Give it score from 0 to 5");
return false;
}
}
}

/* This function will allow Numbers in text box - (9 means tab) */
function allowNumeric(evt) {
// Get the ASCII value of the key that the user entered
var charCode = (evt.which) ? evt.which : evt.keyCode

if ((charCode >= 48 && charCode <= 57) || (charCode == 8) || (charCode == 37) || (charCode == 9) || (charCode == 0)) // If it was, then allow the entry to continue
return true;
else { // If it was not, then dispose the key and continue with entry
if (browserName == "Microsoft Internet Explorer") {
event.returnValue = false;
}
else {
return false;
}
}
}

/* This function will not allow anything to enter in the text box - (9 means tab) */
function notAllowAnything(evt) {
// Get the ASCII value of the key that the user entered
var charCode = (evt.which) ? evt.which : evt.keyCode

if (charCode == 9) // If it was, then allow the entry to continue
return true;
else { // If it was not, then dispose the key and continue with entry
if (browserName == "Microsoft Internet Explorer") {
event.returnValue = false;
}
else {
return false;
}
}
}

// Confirm of Submission of Questionnaire
function IsConfirm() {
var status = false;
status = confirm("You are about to finish the Questionnaire...\nAre you sure to submit the Questionnaire?");
return status;
}

/* This is for restricting maxlength of a multiline text box */
function TextCounter(e, field, countfield, maxlimit) {
var txtid = document.getElementById(field);
var lblid = document.getElementById(countfield);
if (txtid.value.length > maxlimit) // if too long...trim it!
{
txtid.value = txtid.value.substring(0, maxlimit);
}
else {
lblid.innerText = maxlimit - (txtid.value.length) + " characters left.";
lblid.textContent = maxlimit - (txtid.value.length) + " characters left.";
}
}

// This function is used to clear values in all text boxes and set the focus on the first text box of the page
function Reset() {
$(document).ready(function () {
$('.Score:first').focus();
});
}

// Asking Confirmation for submitting the Questionnaire
function SubmitTest() {
Calculate();
return IsConfirm();
}

// This function is uesd to calculate the mean average of a particular section of any division
function Calculate() {
var object = document.getElementById("Cnt_TxtSectionScore"); // Text Box Object
var result = 0; 
var value = 0;
var numOfItems = 0;

$('.Score').each(function () {
value = $(this).val();
if (value == "")
value = 0;

numOfItems = numOfItems + 1;
result = result + parseInt(value);
});

//result = Math.round(parseFloat(result / numOfItems), 0); // not of use as of now
object.value = result;
}