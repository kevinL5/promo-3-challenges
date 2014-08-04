$(document).ready(function() {

  $('#show').click(function() {
      $('.hidden').addClass('see');
      $('body').addClass('opacity');
      });

  $('body').click(function () {
        this.hide();
      });

});