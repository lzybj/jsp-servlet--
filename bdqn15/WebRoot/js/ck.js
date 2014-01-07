var xmlHttpRequest;

function createXMLHttpRequest(){
	if(window.ActiveXObject){//IE
		xmlHttpRequest = new ActiveXObject("Microsoft.XMLHTTP");
	}else{//非IE
		xmlHttpRequest = new XMLHttpRequest();
	}
}

function ckusername(){
	var username = document.getElementById("userName").value;
	if(username == ""){
		document.getElementById("msg").innerHTML = "对不起，不能为空！";
	}else{//实现ajax应用
		//document.getElementById("msg").innerHTML = username;
		//1.创建XMLHttpRequest对象
		alert(xmlHttpRequest);
		createXMLHttpRequest();
		//2.打开异步请求
		xmlHttpRequest.open("get","ckaction?userName=" + username,true);
		//3.调用回调方法
		xmlHttpRequest.onreadystatechange = callback;
		//4.发送请求
		xmlHttpRequest.send(null);
	}
}
//回调方法
function callback(){
	alert(xmlHttpRequest.readyState);
	alert(xmlHttpRequest.status);
	if(xmlHttpRequest.readyState == 4){
		if(xmlHttpRequest.status == 200){
		  	document.getElementById("msg").innerHTML = xmlHttpRequest.responseText;
		}
	}
}
