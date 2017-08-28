





function showLCD(L1,L2,L3,L4){

	$("#Line1").text(L1);
	$("#Line2").text(L2);
	$("#Line3").text(L3);
	$("#Line4").text(L4);


}






function UIchecker(){


 cordova.exec(UiCallBack, 
    	function(err) {callback('Uichecker error!!!!!.');},
        "LCDspp",
        "checker",
    	[]);


}


  function UiCallBack(a){

  	console.log(a.L1);

  	showLCD(a.L1,a.L2,a.L3,a.L4);


  	



  } 