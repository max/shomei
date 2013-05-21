//= require jquery
//= require jquery_ujs
//= require twitter/bootstrap
//= require jquery.signaturepad.min
//= require json2.min

$(function(){
  var signatureOptions = {
    drawOnly: true,
    lineMargin: 0,
    lineTop: 140,
    penColour: '#2D2D2D'
  }
  $('#new_signature').signaturePad(signatureOptions);
});
