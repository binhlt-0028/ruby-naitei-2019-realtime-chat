$(document).ready(function () {
  $.ajaxSetup({
    headers: {
      'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
    }
  });

  $( "#InviteModal" ).on('show.bs.modal', function(){
      $("#inviteName").val("");
      $('#inviteResultList').empty();
  });

  $(document).on('keypress', '#inviteName',function(e) {
    if(e.which == 13){
      var username = $('#inviteName').val();
      $.ajax({
          url: '/users/search',
          type: 'POST',
          dataType: 'JSON',
          data: {
            name: username
          }
      }).done(function(result) {
        var users = result.data
        console.log(users.length);
        if(users.length){
          var i = 0;
          for(i=0;i<users.length;i++){
            var html = '<tr ><td>'+users[i].name+'</td>'
              + '<td>'
              + '<button class=\"btn btn-primary invite-btn\"  value=\"'+users[i].id+'\">'
              + 'Invite</button>'
              + '</td>'
              + '</tr>';
            $('#inviteResultList').append(html);
          }
        }
        else{
          var html = '<p>user not found</>';
          $('#inviteResultList').append(html);
        }
      });
    }
  })

  $(document).on('click', '.invite-btn', function () {
    var user_id = $(this).val();
    var room_id = $("#inviteRoomId").val();
    $.ajax({
        url: '/invites',
        type: 'POST',
        dataType: 'JSON',
        data: {
          user_id: user_id,
          room_id: room_id
        }
    }).done(function(result) {
      toastr.success('Invite success!');
    });
  })
})
