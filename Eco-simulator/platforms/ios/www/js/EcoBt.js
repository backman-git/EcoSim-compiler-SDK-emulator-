



function systemRun(){

console.log("system run");


cordova.exec(function(){ setInterval(UIchecker,100);},
  function(err) {alert("no firmware on the flash");},
  "commander",
  "RUN",
  []);


}







function resume() {

  cordova.exec(function(){alert("system resume");},
    function(err) {alert("error");},
    "commander",
    "RESUME",
    []);



 
}


function pause(){
   cordova.exec(function(){alert("system pause");},
    function(err) {alert("error");},
    "commander",
    "PAUSE",
    []);



}

function stop(){





}



function UIchecker(){


 cordova.exec(UiCallBack, 
    	function(err) {callback('Uichecker error!!!!!.');},
        "UiPort",
        "checker",
    	[]);


}


  function UiCallBack(a){

  	


  	if( (a.P0 & 0x01) == 0x01 )
		$("#yLED").fadeIn();
	else
		$("#yLED").fadeOut();

	if( (a.P0>>1 & 0x01) == 0x01 )
		$("#gLED").fadeIn();
	else
		$("#gLED").fadeOut();

  	



  } 
