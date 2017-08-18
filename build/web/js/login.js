/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

function setErrorMessage(msg) {
    $("#errorMsg1").html(msg);
}
function setErrorOutlineStyle(id) {
    document.getElementById(id).style.borderColor = "red";
}

function clearErrorMessage() {
    $("#errorMsg1").html("");
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

function isEmpty(value) {
    value = value.toString().trim();
    return (value === "") ? true : false;
}

$(document).ready(function() {
    $("#loginCheck").click(function() {
        var user_name = $("#uname").val().trim();
        var user_pwd = $("#pwd").val().trim();

        if (isEmpty(user_name)) {
            setErrorStyle("uname", "Username is Empty");
            return false;
        } else {
            clearErrorStyle("uname");
        }

        if (isEmpty(user_pwd)) {
            setErrorStyle("pwd", "Password is Empty");
            return false;
        } else {
            clearErrorStyle("pwd");
        }
    });
});
