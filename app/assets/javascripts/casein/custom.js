// CASEIN CUSTOM
// Use this file for your project-specific Casein JavaScript

//= require bootstrap-wysihtml5
//= require cocoon
//= require cloudinary

$(function(){
  $('.wysihtml5').wysihtml5();

  $(document).on("cocoon:after-insert", function(e, insertedItem){
    insertedItem.find('.wysihtml5').wysihtml5();
  });
  $(document).on("cocoon:before-insert", function(e, insertedItem){
    insertedItem.fadeIn('slow');
  });
});
