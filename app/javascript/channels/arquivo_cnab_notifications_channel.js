import consumer from "./consumer"

consumer.subscriptions.create("ArquivoCnabNotificationsChannel", {
  connected() {
    console.log("Connected to the room!");
  },

  disconnected() {
    // Called when the subscription has been terminated by the server
  },

  received(data) {
   	$('#messages').html('<p class="alert alert-' + data.alert + '">' + data.message + '</div><button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>')
  }
});
