

function send(ratio){

	var level = Math.floor(ratio*100);


	console.log(level);



 cordova.exec(UiCallBack, 
    	function(err) {callback('send value error!!!!!.');},
        "knobSpp",
        "sendValue",
    	[level]);




}


function UiCallBack () {
	console.log("good");
}



function InitUi(){


clearInterval(timer);

 cordova.exec(UiCallBack, 
    	function(err) {callback('send value error!!!!!.');},
        "knobSpp",
        "sendValue",
    	[0]);



}