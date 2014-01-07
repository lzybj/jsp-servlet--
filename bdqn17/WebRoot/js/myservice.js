var xmlHttpRequest;

function createXMLHttpRequest(){
	if(window.ActiveXObject){
		xmlHttpRequest = new ActiveXObject("Microsoft.XMLHTTP");
	}else{
		xmlHttpRequest = new XMLHttpRequest();
	}
}

function ttt(){
	createXMLHttpRequest();
	var url = "getmessage";
	xmlHttpRequest.open("get",url,true);
	xmlHttpRequest.onreadystatechange = callback;
	xmlHttpRequest.send(null);
}

function callback(){
	if(xmlHttpRequest.readyState == 4){
		if(xmlHttpRequest.status == 200){
			var mytext = xmlHttpRequest.responseText;
			if(mytext.substring(0,1) != "0"){
				document.getElementById("smsinfo").innerHTML = "<h1>您有" + mytext + "条新短消息！</h1>";
			}
		}
	}
}

function yyy(){
	alert("sss");
	createXMLHttpRequest();
	var cx = document.getElementById("cx").value;
	var url = "getres?cx="+cx;
	xmlHttpRequest.open("get",url,true);
	xmlHttpRequest.onreadystatechange = callback2;
	xmlHttpRequest.send(null);
	return false;
}

function callback2(){
	if(xmlHttpRequest.readyState == 4){
		if(xmlHttpRequest.status == 200){
			document.getElementById("res").innerHTML = xmlHttpRequest.responseText;
		}
	}	
}

window.setInterval("ttt()",5000);