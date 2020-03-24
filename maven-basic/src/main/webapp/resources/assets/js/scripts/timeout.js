/**
 * 
 */

function inactivityTime() {
	var t;
	//resetTimer;

	// DOM Events
	//document.onmousemove = resetTimer;
	//document.onkeypress = resetTimer;

	window.onload = resetTimer;
	window.onmousemove = resetTimer;
	window.onmousedown = resetTimer;
	window.onclick = resetTimer;
	window.onscroll = resetTimer;
	window.onkeypress = resetTimer;
	
	var timeoutValue=toValue.value;
	var timeoutService=toValue.url;
	var host=toValue.host;
	
	function logout() {

		var url = window.location.host;
		var prot = window.location.protocol;
		//var timeoutUrl = prot + "//" + url + timeoutService;
		var timeoutUrl = prot + "//" + host + timeoutService;
		//alert(timeoutUrl);
		window.location.href = timeoutUrl;
		
	}

	function resetTimer() {
		clearTimeout(t);
		// 1000 milisec = 1 sec
		
		t = setTimeout(logout, timeoutValue);
		
	}
}