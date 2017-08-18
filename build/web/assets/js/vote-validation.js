function setErrorMessage1(msg) {
    $("#errMsg1").html(msg);
}
function setErrorOutlineStyle1(id) {
    document.getElementById(id).style.borderColor = "red";
}

function clearErrorMessage1() {
    $("#errMsg1").html("");
}
function clearErrorOutlineStyle1(id) {
    document.getElementById(id).style.borderColor = "";
}

function setErrorStyle1(id, msg) {
    setErrorMessage1(msg);
    setErrorOutlineStyle1(id);
    document.getElementById(id).focus();
}

function clearErrorStyle1(id) {
    clearErrorMessage1();
    clearErrorOutlineStyle1(id);
}

function setErrorMessage2(msg) {
    $("#errMsg2").html(msg);
}
function setErrorOutlineStyle2(id) {
    document.getElementById(id).style.borderColor = "red";
}

function clearErrorMessage2() {
    $("#errMsg2").html("");
}
function clearErrorOutlineStyle2(id) {
    document.getElementById(id).style.borderColor = "";
}

function setErrorStyle2(id, msg) {
    setErrorMessage2(msg);
    setErrorOutlineStyle2(id);
    document.getElementById(id).focus();
}

function clearErrorStyle2(id) {
    clearErrorMessage2();
    clearErrorOutlineStyle2(id);
}



function setErrorMessage3(msg) {
    $("#errMsg3").html(msg);
}
function setErrorOutlineStyle3(id) {
    document.getElementById(id).style.borderColor = "red";
}

function clearErrorMessage3() {
    $("#errMsg3").html("");
}
function clearErrorOutlineStyle3(id) {
    document.getElementById(id).style.borderColor = "";
}

function setErrorStyle3(id, msg) {
    setErrorMessage3(msg);
    setErrorOutlineStyle3(id);
    document.getElementById(id).focus();
}

function clearErrorStyle3(id) {
    clearErrorMessage3();
    clearErrorOutlineStyle3(id);
}



function isValidEmail(email) {
    var regex = /^([a-zA-Z0-9_.+-])+\@(([a-zA-Z0-9-])+\.)+([a-zA-Z0-9]{2,4})+$/;
    return regex.test(email);
}

function isValidMobileNo(no) {
    if (isNaN(no))
        return false;
    if (no.length !== 10)
        return false;
    else
        return true;
}
function isEmpty(value) {
    //var val = $("#" + id).val().trim().valueOf();
    value = value.toString().trim();
    return (value === "") ? true : false;
}
 

$(document).ready(function() {
    $("#votesubmit").click(function() {
 
        var email = $("#vemail").val();
        var city = $("#vcity").val();
        var area = $("#varea").val();
          var mobile = $("#vmobile").val();
        if (city === "-1") {
            setErrorStyle1("vcity", "Please Choose City");
			
            return false;
        } else {
            clearErrorStyle1("vcity");
        }
        if (isEmpty(area)) {
            setErrorStyle1("varea", "Enter your area");
            return false;
        } else {
            clearErrorStyle1("varea");
        }

        if (isEmpty(email)) {
            setErrorStyle1("vemail", "Enter your email");
            return false;
        } else {
            if (!isValidEmail(email)) {
                setErrorStyle1("vemail", "Invalid E-Mail ID");
                return false;
            } else {
                clearErrorStyle1("vemail");
            }
        }
        
        if (isEmpty(mobile)) {
            setErrorStyle1("vmobile", "Enter your mobile");
            return false;
        } else {
            if (!isValidMobileNo(mobile)) {
                setErrorStyle1("vmobile", "Invalid Mobile Number");
                return false;
            } else {
                clearErrorStyle1("vmobile");
            }
        }


    });
});
$(document).ready(function() {
    $("#subsubmit").click(function() {
 
        var email = $("#subemail").val();
         
        if (isEmpty(email)) {
            setErrorStyle2("subemail", "Enter your email");
            return false;
        } else {
            if (!isValidEmail(email)) {
                setErrorStyle2("subemail", "Invalid E-Mail ID");
                return false;
            } else {
                clearErrorStyle2("subemail");
            }
        }
        
       


    });   });
    $(document).ready(function() {
    $("#appdownload").click(function() {
 
        var phone = $("#subphone").val();
         
        if (isEmpty(phone)) {
            setErrorStyle3("subphone", "Enter your mobile number");
            return false;
        } else {
            if (!isValidMobileNo(phone)) {
                setErrorStyle3("subphone", "Invalid Mobile number");
                return false;
            } else {
                clearErrorStyle3("subphone");
            }
        }
        
       
   });

 
});