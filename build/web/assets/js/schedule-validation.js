function setErrorMessage(msg) {
    $("#errMsg").html(msg);
}
function setErrorOutlineStyle(id) {
    document.getElementById(id).style.borderColor = "red";
}

function clearErrorMessage() {
    $("#errMsg").html("");
}
function clearErrorOutlineStyle(id) {
    document.getElementById(id).style.borderColor = "";
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
    $("#submitConfirmOrder").click(function() {
        var name = $("#sname").val();
        var mob = $("#smobile").val();
        var email = $("#semail").val();
        var add = $("#sadd").val();
        var stype = $("#stype").val();
        var stype1 = $("#stype1").val();
        var date = $("#datetimepicker10").val();

        if (isEmpty(name)) {
            setErrorStyle("sname", "Enter your Name");
            return false;
        } else {
            clearErrorStyle("sname");
        }


        if (isEmpty(mob)) {
            setErrorStyle("smobile", "Enter your Mobile No");
            return false;
        } else {
            if (!isValidMobileNo(mob)) {
                setErrorStyle("smobile", "Invalid Mobile Number");
                return false;
            } else {
                clearErrorStyle("smobile");
            }
        }

        if (isEmpty(email)) {
            setErrorStyle("semail", "Enter your Email");
            return false;
        } else {
            if (!isValidEmail(email)) {
                setErrorStyle("semail", "Invalid E-Mail ID");
                return false;
            } else {
                clearErrorStyle("semail");
            }
        }

        if (isEmpty(add)) {
            setErrorStyle("sadd", "Enter your Address");
            return false;
        } else {
            clearErrorStyle("sadd");
        }

        if (stype === "-1") {
            setErrorStyle("stype", "Please Choose Pick-up type");
            return false;
        } else {
            clearErrorStyle("stype");
        }

        if (stype1 === "-1") {
            setErrorStyle("stype1", "Please Choose Service");
            return false;
        } else {
            clearErrorStyle("stype1");
        }

        if (isEmpty(date)) {
            setErrorStyle("datetimepicker10", "Please choose date");
            return false;
        } else {
            clearErrorStyle("datetimepicker10");
        }
    });


 
});