console.log('CIA Details coming up!');
var page = require('webpage').create();
page.open('file:///home/$USER/guru/cianew.html', function(status) {
  console.log("Getting it Ready: ");
    page.render('cia.png');
  phantom.exit();
});
