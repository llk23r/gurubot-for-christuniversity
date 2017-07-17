console.log('Hello, world!');
var page = require('webpage').create();
page.open('file:///home/$USER/attendance.pdf', function(status) {
  // console.log("Status: " + status);
  console.log("Success: ");
  // if(status === "success") {
    // page.render("/dev/stdout");
    page.render('mody.png');

  // }
  phantom.exit();
});
	
// rasterize.js file:///home/rahul/apk.html attendance.pdf
