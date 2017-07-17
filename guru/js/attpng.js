console.log('Attendance Details coming up!');
var page = require('webpage').create();
page.open('file:///home/$USER/guru/attendancenew.html', function(status) {
    page.render('currattn.png');
  phantom.exit();
});
