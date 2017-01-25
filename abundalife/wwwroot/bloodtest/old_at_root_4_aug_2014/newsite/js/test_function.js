// JavaScript Document
var printAllHtml = '';




function resultOfTest(_type) {
    debugger
    //alert(printAllHtml);
    
        
    var ideal = Number(document.getElementById('i_score_' + _type).innerHTML);
    
    var uscore = Number(document.getElementById('u_score_' + _type).value);
    var loc = document.URL;
    
    if (uscore == "" ) {
        alert("Enter your test score");
        document.getElementById('u_score_' + _type).focus();
        return false;
    }

    if (!isNumber(uscore)) {
        alert("Please enter valid test score");
        document.getElementById('u_score_' + _type).focus();
        return false;
    }
    
    

    if (loc.toLowerCase().indexOf('AntiAgingReport.aspx'.toLowerCase()) != -1) {

        var subtype = '';
        if (_type.indexOf('spec_gravity') != -1) {

            subtype = 'spec_gravity';
        }
        else if (_type.indexOf('tt') != -1) {

            subtype = 'tt';
        }

        else if (_type.indexOf('dhea') != -1) {

        subtype = 'dhea';
        }

        try {
            document.getElementById('low_' + subtype).style.display = 'none';
            document.getElementById('high_' + subtype).style.display = 'none';
            document.getElementById('equal_' + subtype).style.display = 'none';

        }
        catch (err) {

        }

        try {
            document.getElementById('low_' + subtype + '2').style.display = 'none';
            document.getElementById('high_' + subtype + '2').style.display = 'none';
            document.getElementById('equal_' + subtype + '2').style.display = 'none';

        }
        catch (err) {

        }

        try {
            document.getElementById('low_' + subtype + '3').style.display = 'none';
            document.getElementById('high_' + subtype + '3').style.display = 'none';
            document.getElementById('equal_' + subtype + '3').style.display = 'none';

        }
        catch (err) {

        }

        try {
            document.getElementById('low_' + subtype + '4').style.display = 'none';
            document.getElementById('high_' + subtype + '4').style.display = 'none';
            document.getElementById('equal_' + subtype + '4').style.display = 'none';

        }
        catch (err) {

        }

        try {
            document.getElementById('low_' + subtype + '5').style.display = 'none';
            document.getElementById('high_' + subtype + '5').style.display = 'none';
            document.getElementById('equal_' + subtype + '5').style.display = 'none';

        }
        catch (err) {

        }

    }

    if (ideal > uscore) {
        document.getElementById('btn_' + _type).className = "print display-block";       


        document.getElementById('low_' + _type).style.display = '';
        document.getElementById('high_' + _type).style.display = 'none';
        document.getElementById('equal_' + _type).style.display = 'none';
    }
    else if (ideal < uscore) {
        document.getElementById('btn_' + _type).className = "print display-block";

        document.getElementById('low_' + _type).style.display = 'none';
        document.getElementById('high_' + _type).style.display = '';
        document.getElementById('equal_' + _type).style.display = 'none';
    }
    else {
        document.getElementById('btn_' + _type).className = "print display-block";

        document.getElementById('low_' + _type).style.display = 'none';
        document.getElementById('high_' + _type).style.display = 'none';
        document.getElementById('equal_' + _type).style.display = '';
    }

     printAllHtml = printAllHtml + document.getElementById('div_' + _type).innerHTML;
}

function print(_type) {

    /*
    document.getElementById('btn_' + _type).className = "display-none";
    document.getElementById('btn_' + _type).style.display = 'none';

    var ideal = '';
    var equal = '';
    var low = '';
    var high = '';
    var h1 = ''
    var range = ''

    alert(jQuery("[id$='h1_" + _type + "']").outerHTML());
    h1 = document.getElementById('h1_' + _type).innerHTML;
    range = document.getElementById('range_' + _type).innerHTML;

    if (document.getElementById('ideal_' + _type).style.display != 'none')
        ideal = document.getElementById('ideal_' + _type).innerHTML;

    if (document.getElementById('ideal_' + _type).style.display != 'none')
        ideal = document.getElementById('ideal_' + _type).innerHTML;

    if (document.getElementById('equal_' + _type).style.display != 'none')
        equal = document.getElementById('equal_' + _type).innerHTML;

    if (document.getElementById('low_' + _type).style.display != 'none')
        low = document.getElementById('low_' + _type).innerHTML;

    if (document.getElementById('high_' + _type).style.display != 'none')
        high = document.getElementById('high_' + _type).innerHTML;

    document.getElementById('btn_' + _type).className = "print display-block";
    document.getElementById('btn_' + _type).style.display = '';
    alert()
    var content = h1 + range + ideal + equal + low + high;*/
    var content = document.getElementById('div_' + _type).innerHTML;
    var pwin = window.open('', 'print_content', 'width=1005,height=500');  

    pwin.document.open();    
    pwin.document.write('<html><head><link rel="stylesheet" href="css/print.css" rel="stylesheet" type="text/css" /></head><body onload="window.print()">' + content + '</body></html>');
    pwin.document.close();

    setTimeout(function() { pwin.close(); }, 1000);

    //return false;
}



function isNumber(n) {
    return !isNaN(parseFloat(n)) && isFinite(n);
}



function ShowResult(_type) {
    if (document.getElementById('u_score_' + _type).value != '' && isNumber(document.getElementById('u_score_' + _type).value)) {
        resultOfTest(_type);
 
        TestScoreColor(_type);

    }
}

function TestScoreColor(_type) {

    try {

        debugger

        var blueRange = jQuery("#div_" + _type + " strong:eq(1)").html();
        var redRange = jQuery("#div_" + _type + " strong:eq(2)").html();
        var testScore = $.trim(document.getElementById('u_score_' + _type).value);
        var lowBlueValue = 0;
        var highBlueValue = 0;
        var lowRedValue = 0;
        var highRedValue = 0;
        var txtbox = $("#u_score_" + _type);

        if (blueRange.indexOf('-') > 0) {
            var blueSplit = blueRange.split('-');
            lowBlueValue = parseFloat($.trim(blueSplit[0]));
            highBlueValue = parseFloat($.trim(blueSplit[1]));
        }

        if (redRange.indexOf('-') > 0) {
            var redSplit = redRange.split('-');
            lowRedValue = parseFloat($.trim(redSplit[0]));
            highRedValue = parseFloat($.trim(redSplit[1]));
        }

        if (testScore >= lowRedValue && testScore <= highRedValue) {
           
            txtbox.addClass("red");
        }
        else if (testScore >= lowBlueValue && testScore <= highBlueValue) {
        
            txtbox.addClass("blue");
        }
       

    }
    catch (err) {

        alert('err');
    }

}

function PrintAll() {



    var content = document.getElementById('div_Header').innerHTML + printAllHtml; //document.getElementById('main_container').innerHTML;
    var pwin = window.open('', 'print_content', 'width=1005,height=500');

    pwin.document.open();
    pwin.document.write('<html><head><link rel="stylesheet" href="css/print.css" rel="stylesheet" type="text/css" /></head><body onload="window.print()">' + content + '</body></html>');
    pwin.document.close();

    setTimeout(function() { pwin.close(); }, 1000);


}	