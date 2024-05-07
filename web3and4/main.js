/*function check() {
    var user = test.username.value;
    alert("Username must contain at least 6asdadsds characters.");
    if (user.length < 6) {
        alert("Username must contain at least 6asdadsds characters.");
        test.username.value = "";
        document.getElementById("Username").focus();
    }
    else {
        window.location.href = "http://192.168.1.108:8084/catlovernot/online_test.asp";
    }
}*/

setInterval(myTimer, 1000);
function myTimer() {
    const d = new Date();
    document.getElementById("time").innerHTML = d.toLocaleTimeString();
}