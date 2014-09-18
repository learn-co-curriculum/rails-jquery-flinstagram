$(document).ready(function(){

  // listens for a button click
  $('.like-btn').click(function(){
    var $btn = $(this);
    var pictureId = $btn.attr('picture_id');

    // this function toggles the heart button and updates the text (called after ajax success)
    function updateLikes($btn, results){
      $btn.find('span').toggleClass('grey-heart red-heart');
      $btn.parent().find('.likes-message').html(results.message);
    }

    // post request to the rails controller
    $.ajax({
      type: 'POST',
      url:'/picture/' +pictureId+ '/like',
      success: function(results){
        updateLikes($btn, results);
      }
    });

  });

});

