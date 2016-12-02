const chatoBaseUrl = 'http://localhost:3000';
const req = new XMLHttpRequest();

function buildChatoIframe(src) {
  var iframe = document.createElement('iframe');
  iframe.src = src;
  iframe.className = 'chat-window';
  return iframe;
}

chatoEvents = {
  loadChatWindow: function() {
    var url = chatoBaseUrl + '/api/chat_windows';
    var data = 'currentUserUuid=abc123&participantUuids=xysz';
    var iframe = buildChatoIframe(url + '?' + data);
    req.open('GET', url, false);
    req.onload = () => req.status === 200 ? document.body.appendChild(iframe) : console.log(req.statusText);
    req.onerror = (e) => reject(Error(`Network Error: ${e}`));
    req.send(data);
  }
}