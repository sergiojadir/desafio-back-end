import consumer from "./consumer"

consumer.subscriptions.create("ArquivoCnabNotificationsChannel", {
  connected() {
    // Called when the subscription is ready for use on the server
  },

  disconnected() {
    // Called when the subscription has been terminated by the server
  },

  received(data) {
  	// .html("<div class='alert alert-success' role='alert'></div>")
   	$('#messages').append(data['message'])
  }
});
