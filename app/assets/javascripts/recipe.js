$( document ).ready(function() {
  var counter = 3;
  var limit = 5;
    $('#add-more').on("click", function() {
      if (counter == limit) {
      alert("Maximum limit of ingredients is 5!");
    }
    else {
      $("<input type='text' name='ingredients[]'' id='ingredients_'>").insertAfter("#ingredients_:last");
      counter ++;
    }
    });
});