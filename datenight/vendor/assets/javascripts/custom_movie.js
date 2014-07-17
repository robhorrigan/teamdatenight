$(document).ready(function(){
  $('.theater-info').click(function(){
    $('.movie-info').slideDown(function(){
      $('.movie-title').click(function(){
        $('.movie-runtimes').slideDown();
      });
    });
  });
//   $.ajax({
//     type: 'GET',
//     url: '/students.json',
//     success: function(response){
//       _.each(response, function(student){
//         var templateString = "<li class='student' data-id='<%= person.id %>'><a href='#'><%= person.name %></a></li>";
//         var template = _.template(templateString);
//         $('#students-list').append(template({person: student}))
//       });
//     }
//   });

//   $('#students-list').on('click', '.student', function(event){
//     event.preventDefault();

//     var itemId = $(this).data('id');
//     $.ajax({
//       type: 'GET',
//       url: '/student/'+itemId+'.json',
//       success: function(student) {
//         var templateString = "<p><img src='<%=person.image_url%>'></p><p><%= person.name %></p><p><%=person.tag_line%></p><p><%=person.bio%></p>"
//         var template = _.template(templateString);
//         $('#details').html(template({person: student}));
//       }
//     });
//   });
});