$(document).ready(function(){
  $('div.theater-info').on('click', function(){
    $(this).find('div.movie-title-info').slideDown();
    $(this).find('div.movie-title-info').on('click',function(){
      $(this).find('div.movie-runtimes').slideDown();
    });
  //   $(this).on('click', function(){
  //     $('div.movie-runtimes').slideDown();
  //   });
  });
});