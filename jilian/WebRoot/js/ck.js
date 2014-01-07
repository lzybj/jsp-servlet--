var xmlHttp;
function createXMLHttpRequest(){
	if(window.ActiveXObject){
		xmlHttp = new ActiveXObject("Microsoft.XMLHTTP");
	}else{
		xmlHttp = new XMLHttpRequest();
	}
}

function loadcity(){
	createXMLHttpRequest();
	xmlHttp.open("get","getxml");
	xmlHttp.onreadystatechange = callback;
	xmlHttp.send(null);
}

function callback(){
	if(xmlHttp.readyState == 4){
		if(xmlHttp.status == 200){
			var doc = xmlHttp.responseXML;
			var citys = doc.getElementsByTagName("city");
			var city = document.getElementById("city");
			for(var i = 0;i < citys.length;i++){
				var cityvalue = citys[i].childNodes[0].nodeValue;
				alert(cityvalue);
				city.add(new Option(cityvalue,cityvalue),null);
			}
		}
	}
}