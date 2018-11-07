// $( document ).ready(function() {
//   $('#add-users input').on('click', function() {
//     var userId = $(this).attr("id").split("-")[0];
//     var data = {user_id: userId};
//     $.ajax({
//       url: this.action,
//       data: data,
//       method: 'post'
//     }).done(function(res){
//       console.log(res)
//       $('#' + res.id + "-add-member").parent().remove();
//       $('#member-list').append(memberAppendBuilder(res));
//     });
//   });
// });
//
// var memberAppendBuilder = function(userData){
//    return "<li>" + userData.email + "</li>";
// };
