var xmlHttpRequest;

function createXMLHttpRequest(){
	if(window.ActiveXObject){
		xmlHttpRequest = new ActiveXObject("Microsoft.XMLHTTP");
	}else{
		xmlHttpRequest = new XMLHttpRequest();
	}
}

var myflag;
function ckemail(){
	var email = document.getElementById("email").value;
	createXMLHttpRequest();
	var url = "ckemail?email=" + email;
	xmlHttpRequest.open("get",url,true);
	xmlHttpRequest.onreadystatechange = callback;
	xmlHttpRequest.send(null);
}

function setFlag(flag){
	myflag = flag;
}

function isok(){
	if(myflag.substring(0,1) == "0"){
		return true;
	}else{
		return false;
	}
}


function callback(){
	if(xmlHttpRequest.readyState == 4){
		if(xmlHttpRequest.status == 200){
			setFlag(xmlHttpRequest.responseText);
		}
	}
}