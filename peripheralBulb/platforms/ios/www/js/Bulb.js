



function UiCallBack (data) {
	console.log(data.lightLevel);

     $('#light-bulb2').css({'opacity': data.lightLevel});

}



function UiChecker(){



     cordova.exec(UiCallBack, 
    	function(err) {callback('send value error!!!!!.');},
        "bulbSpp",
        "checker",
    	[0]);



}