App.appearance = App.cable.subscriptions.create({
  channel:'AppearanceChannel',
   room: window.location.pathname.split("/")[2]
 }, {
  received: function(data) {
    var user = JSON.parse(data)
    if (user.online === true){
      $(userImgIdConstructor(user)).attr('class', 'active');
    };
    if (user.online === false){
      $(userImgIdConstructor(user)).attr('class', 'inactive');
    };
  }
});

var userImgIdConstructor = function(user){
  return "#" + user.id + "-status";
}