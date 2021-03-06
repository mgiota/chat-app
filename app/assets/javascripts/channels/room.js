App.room = App.cable.subscriptions.create("RoomChannel", {
  connected: function() {
    // Called when the subscription is ready for use on the server
  },

  disconnected: function() {
    // Called when the subscription has been terminated by the server
  },

  received: function(data) {
    console.log(data)
    // Called when there's incoming data on the websocket for this channel
    $(".comment-alert").show().delay(3000).fadeOut('slow');
    $('.comment-result').append(data.comment);
  },

	listen_to_comments: function() {
	  return this.perform('listen', {
	    room_id: $("[data-room-id]").data("room-id")
	  });
	}
});

$(document).on('turbolinks:load', function() {
  setTimeout(function() {
     App.room.listen_to_comments();
  }, 500);
});
