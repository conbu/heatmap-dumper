var page = require('webpage').create();
page.open('http://ikosin.github.io/conbu-api-server/', function() {
  page.render("heatmap.png")
  phantom.exit();
});
