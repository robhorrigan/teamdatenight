$(document).ready(function(){
  $('#tableSelect tr').on('click', function() {
    $(this).find('td#photo-row').children('input.restaurant-btn').prop('checked', true);
  });

});