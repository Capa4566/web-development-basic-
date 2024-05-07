var timerV = setInterval(myTimer, 1000);
var totalSeconds = 0;
var min = 0;
var sec = 0;
function myTimer() {
    ++totalSeconds;
    var hour = Math.floor(totalSeconds/3600);
    var minute = Math.floor((totalSeconds - hour*3600)/60);
    var seconds = totalSeconds - (hour*3600 + minute*60);
    if (minute < 10) {
        minute = "0" + minute;
    }
    if (seconds < 10) {
        seconds = "0" + seconds;
    }
    document.getElementById("Timer").innerHTML = minute + " : " + seconds;
    min = minute;
    sec = seconds;
}

function calculate() {
    clearInterval(timerV);
    var timetaken = min + ":" + sec;
    var score = 0;
    switch (document.answer.breed1.value) {
        case "Australian Mist": score += 1;
        break;
    }
    switch (document.answer.breed2.value) {
        case "American Curl": score += 1;
        break;
    }
    if ((document.answer.behaviour11.checked) && (document.answer.behaviour12.checked) && (document.answer.behaviour13.checked)) {
        score += 1;
    }
    if((document.answer.behaviour21.checked) && !(document.answer.behaviour22.checked) && (document.answer.behaviour23.checked)) {
        score += 1;
    }
    switch (document.answer.Watch1.value) {
        case "five": score += 1; 
        break;
        case '5': score += 1;
        break;
    }
    switch (document.answer.Watch2.value) {
        case "black and white":score += 1;
        break; 
        case "white and black":score += 1;
        break;
    }
    alert("Your score is: " + score + "\nYour time taken is: " + timetaken);
}