var xmlHttp;

function createXMLHttpRequest(){
	if(window.ActiveXObject){
		xmlHttp = new ActiveXObject("Microsoft.XMLHTTP");
	}else if(window.XMLHttpRequest){
		xmlHttp = new XMLHttpRequest();
	}
}
function cktest(){
	alert("ssss");
	createXMLHttpRequest();
	xmlHttp.open("get","myservlet?username=tt",true);
	xmlHttp.onreadystatechange = callback;
	
	xmlHttp.send(null);
}
function callback(){
	alert(xmlHttp.readyState);
	alert(xmlHttp.status);
	if(xmlHttp.readyState == 4){
		if(xmlHttp.status == 200){
			document.getElementById("msg").innerHTML = xmlHttp.responseText;
		}
	}
}