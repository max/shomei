//= require jquery
//= require jquery_ujs
//= require jquery.signaturepad.min
//= require json2.min
//= require_tree .

$(function(){
  var signatureOptions = {
    drawOnly: true,
    lineMargin: 0,
    lineTop: 140,
    penColour: '#2D2D2D'
  }
  $('#new_signature').signaturePad(signatureOptions);
});
