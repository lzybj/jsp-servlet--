var xmlHttpRequest;

function createXMLHttpRequest(){
	if(window.ActiveXObject){//IE
		xmlHttpRequest = new ActiveXObject("Microsoft.XMLHTTP");
	}else{//��IE
		xmlHttpRequest = new XMLHttpRequest();
	}
}

function ckusername(){
	var username = document.getElementById("userName").value;
	if(username == ""){
		document.getElementById("msg").innerHTML = "�Բ��𣬲���Ϊ�գ�";
	}else{//ʵ��ajaxӦ��
		//document.getElementById("msg").innerHTML = username;
		//1.����XMLHttpRequest����
		alert(xmlHttpRequest);
		createXMLHttpRequest();
		//2.���첽����
		xmlHttpRequest.open("get","ckaction?userName=" + username,true);
		//3.���ûص�����
		xmlHttpRequest.onreadystatechange = callback;
		//4.��������
		xmlHttpRequest.send(null);
	}
}
//�ص�����
function callback(){
	alert(xmlHttpRequest.readyState);
	alert(xmlHttpRequest.status);
	if(xmlHttpRequest.readyState == 4){
		if(xmlHttpRequest.status == 200){
		  	document.getElementById("msg").innerHTML = xmlHttpRequest.responseText;
		}
	}
}
