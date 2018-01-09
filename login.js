var attempt = 3;

var userId = "username";
var passId = "password";
var submitId = "submit";

function validate(){
	var username = document.getElementById(userId).value;
	var password = document.getElementById(passId).value;

	if( username == "admin" && password == "admin"){
		alert("Login successfully");
		window.open("account.html");
                
		return false;
	}else{
		attempt --;
		if(attempt > 1){
			alert("You have left "+attempt+" attempts;");
		}
		alert("You have left "+attempt+" attempt;");
	}
	if(attempt == 0){
		document.getElementById(userId).disabled = true;
		document.getElementById(passId).disabled = true;
		document.getElementById(submitId).disabled = true;

		return false;
	}
}