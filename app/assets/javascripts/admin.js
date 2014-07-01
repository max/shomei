//= require jquery
//= require jquery_ujs
//= require twitter/bootstrap
//= require jquery.signaturepad.min
//= require json2.min

function renderSignature(data, selector) {
  $(selector).signaturePad({displayOnly: true}).regenerate(data);
}
