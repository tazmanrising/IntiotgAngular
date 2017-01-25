var browserName = navigator.appName; // getting the client's browser's name
var projectName = "My Abunda Life";

/* This function will allow only alphabetical characters and spaces. */
function AllowAlphabet(e) {
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
function NotAllowSpecialChar(e) {
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

/* This function will allow Numbers in text box - (9 means tab) */
function AllowNumber(evt) {
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

/* This function will allow Numbers in text box with decimal also - (9 means tab) (46 means decimal) */
function AllowNumberWithDot(evt) {
// Get the ASCII value of the key that the user entered
var charCode = (evt.which) ? evt.which : evt.keyCode

if ((charCode >= 48 && charCode <= 57) || (charCode == 8) || (charCode == 37) || (charCode == 39) || (charCode == 9) || (charCode == 46)) // If it was, then allow the entry to continue
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
function NotAllow(evt) {
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

// Confirmation of deletion of any record
function IsConfirm() {
var status = false;
status = confirm("Are you sure... really want to do it ?");
return status;
}

// This function is used to trim the supplied text from left and right
function TrimText(value) {
return $.trim(value);
}