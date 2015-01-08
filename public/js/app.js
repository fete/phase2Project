$(document).ready(function() {

//Code in this function is called after the document has loaded in it's entirety
//this guarantees that any element we bind to will exist on the page
//when we try to bind to them
//http://docs.jquery.com/Tutorials:Introducing_$(document).ready()

//Identify the obj(button) then the click event(.click), followed by a function 
//that allows you to run code on that click event.
  //Delete
  $('.event').on('submit', 'form.delete_form')

  // Edit
  $('.event').on('click', 'a.edit_link', function(event) {
    event.preventDefault();
    
    var $target = $(event.target);
    $target.closest('.event').children('.edit_wrapper').show;

    // $.ajax({
    //   type:"POST"
    //   url:"/ajax_demo"
    //   data:	
    // }).done(function(response){
    	
    // })

  });

});