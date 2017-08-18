/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


function setErrorMessage(msg) {
    $("#errorMsg").html(msg);
}
function setErrorOutlineStyle(id) {
    document.getElementById(id).style.borderColor = "red";
}

function clearErrorMessage() {
    $("#errorMsg").html("");
}

function setErrorMessage1(msg) {
    $("#errorMsg").html(msg);
}


function clearErrorMessage1() {
    $("#errorMsg").html("");
}
function clearErrorOutlineStyle(id) {
    document.getElementById(id).style.borderColor = "";
}
function setErrorStyle1(id, msg) {
    setErrorMessage1(msg);
    setErrorOutlineStyle(id);
    document.getElementById(id).focus();
}

function clearErrorStyle1(id) {
    clearErrorMessage1();
    clearErrorOutlineStyle(id);
}
function setErrorStyle(id, msg) {
    setErrorMessage(msg);
    setErrorOutlineStyle(id);
    document.getElementById(id).focus();
}

function clearErrorStyle(id) {
    clearErrorMessage();
    clearErrorOutlineStyle(id);
}

function isValidEmail(email) {
    var regex = /^([a-zA-Z0-9_.+-])+\@(([a-zA-Z0-9-])+\.)+([a-zA-Z0-9]{2,4})+$/;
    return regex.test(email);
}

function isValidMobileNo(no) {
    if (isNaN(no)) {

        return false;
    }
    if (no.length !== 10) {

        return false;
    }
    else {
        return true;
    }
}

function isValidNo(no) {
    if (isNaN(no)) {
        return false;
    } else {
        return true;
    }
}


function isEmpty(value) {
    value = value.toString().trim();
    return (value === "") ? true : false;
}

$(document).ready(function() {

    $("#custmAccount").click(function() {
   //     var sal = $("#sal").val();
        var custname = $("#custname").val().trim();
        var custemail = $("#custemail").val().trim();
        var custmobile = $("#custmobile").val().trim();
        var custpin = $("#custpin").val().trim();
        var custadd = $("#custadd").val().trim();
     //   var custdob = $("#custdob").val().trim();
      //  var custwallet = $("#custwallet").val().trim();
       // var custloyalty = $("#custloyalty").val().trim();

        /* if (sal === "") {
         setErrorStyle("sal", "Please Choose Pick-up type");
         return false;
         } else {
         clearErrorStyle("sal");
         }
         
         if (isEmpty(custname)) {
         setErrorStyle("custname", "Name is Empty");
         return false;
         } else {
         clearErrorStyle("custname");
         }
         
         
         if (isEmpty(custemail)) {
         setErrorStyle("custemail", "Email is Empty");
         return false;
         } else {
         if (!isValidEmail(custemail)) {
         setErrorStyle("custemail", "Invalid E-Mail ID");
         return false;
         } else {
         clearErrorStyle("custemail");
         }
         } */

        if (isEmpty(custmobile)) {
            setErrorStyle("custmobile", "Mobile Number is Empty");
            return false;
        } else {
            if (!isValidMobileNo(custmobile)) {
                setErrorStyle("custmobile", "Invalid mobile number");
                return false;
            } else {
                clearErrorStyle("custmobile");
            }
        }
        if (isEmpty(custpin)) {
            setErrorStyle("custpin", "Pincode is Empty");
            return false;
        } else {
            if (!isValidNo(custpin)) {
                setErrorStyle("custpin", "Pincode should not contain alphabets");
                return false;
            } else {
                clearErrorStyle("custpin");
            }
        }
        if (isEmpty(custadd)) {
            setErrorStyle("custadd", "Address is Empty");
            return false;
        } else {
            clearErrorStyle("custadd");
        }
//        if (isEmpty(custdob)) {
//            setErrorStyle("custdob", "DOB is Empty");
//            return false;
//        } else {
//            clearErrorStyle("custdob");
//        }

        /* if (isEmpty(custwallet)) {
         setErrorStyle("custwallet", "Customer Wallet is Empty");
         return false;
         } else {
         clearErrorStyle("custwallet");
         }
         if (isEmpty(custloyalty)) {
         setErrorStyle("custloyalty", "Customer Loyalty is Empty");
         return false;
         } else {
         clearErrorStyle("custloyalty");
         } */
    });

    $("#changePwd").click(function() {
        var custpass = $("#custpass").val();
        var cnfpass = $("#cnfpass").val();

        if (isEmpty(custpass)) {
            setErrorStyle1("custpass", "Password is Empty");
            return false;
        } else {
            clearErrorStyle1("custpass");
        }
        if (isEmpty(cnfpass)) {
            setErrorStyle1("cnfpass", "Confirm Password is Empty");
            return false;
        } else {
            if (custpass != cnfpass) {
                setErrorStyle1("cnfpass", "Password Not Same");
                return false;
            } else {
                clearErrorStyle1("cnfpass");
            }
        }
    });
});







