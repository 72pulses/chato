// Create message channel
CreateChatChannel = function() {
  App.messages = App.cable.subscriptions.create({
    channel: "ChatChannel"
  }, {
    connected: function() {},
    disconnected: function() {},
    received: function(data) {
      alert(data.message);
    },
    sendMessage: function(message) {
      return this.perform('send_message', {
        message: message
      });
    }
  });
};

$(document).on('keypress', '.message-textarea', function(event) {
  if (event.keyCode === 13) {
    if (event.target.value == ''){
      event.preventDefault();
      return;
    }
    App.messages.sendMessage(event.target.value);
    event.target.value = "";
    event.preventDefault();
  }
});