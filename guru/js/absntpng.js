console.log('Absent Details coming up!');
var page = require('webpage').create();
page.open('file:///home/$USER/guru/absencenew.html', function(status) {
  console.log("Getting it Ready: ");
    page.render('currabsnt.png');
  phantom.exit();
});
