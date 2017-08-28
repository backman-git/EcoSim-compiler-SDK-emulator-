

var L1="*=================*"
var L2="hello world"
var L3="Design by backman"
var L4="*=================*"



function showLCD(){

	$("#Line1").text(L1);
	$("#Line2").text(L2);
	$("#Line3").text(L3);
	$("#Line4").text(L4);


}






function UIchecker(){


 cordova.exec(UiCallBack, 
    	function(err) {callback('Uichecker error!!!!!.');},
        "UiPort",
        "checker",
    	[]);


}


  function UiCallBack(a){

  	console.log(a.P0);


  	if( (a.P0 & 0x01) == 0x01 )
		$("#yLED").fadeIn();
	else
		$("#yLED").fadeOut();

	if( (a.P0>>1 & 0x01) == 0x01 )
		$("#gLED").fadeIn();
	else
		$("#gLED").fadeOut();

  	



  } 