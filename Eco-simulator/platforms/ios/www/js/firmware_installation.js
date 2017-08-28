

function downloadFirmware(){

console.log("download firmware");
console.log($("#firmware").val());


cordova.exec(downloadFinish,
  function(err) {alert(err.fileName+" don't exist!!");   },
  "commander",
  "DOWNLOAD",
  [ $("#firmware").val() ]);

}



function connectPeripheral(){


  cordova.exec(function(){ alert("virtual peripherals is connected!!");},
  function(err) {callback('send value error!!!!!.');},
  "commander",
  "CONNECT_peripheral",
  []);


}





function downloadFinish(obj){

  alert(obj.fileName+" is downloaded!!");




}