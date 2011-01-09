dojo.require('dojo.io.script');
dojo.ready(function() {
var parms = dojo.queryToObject(window.location.search.substring(1));
var targetNode = dojo.byId("results");
var url = ('http://wwwx.cs.unc.edu' + window.location.pathname).replace('search.html', 'searchIndex.cgi');
console.log(url);

var jsonpArgs = {
  url: url,
  callbackParamName: "callback",
  content: parms,
  load: function(data) {
      //Set the data from the search into the viewbox in nicely formatted JSON
      dojo.byId('query').innerHTML = 'with ' + data.query;
      if (data.results.length == 0) {
        results.innerHTML = 'None found.';
      } else {
        var list = dojo.create('ol', {}, targetNode);
        dojo.forEach(data.results, function(result) {
          var li = dojo.create('li', {}, list);
          var a = dojo.create('a', { href: result.path, innerHTML: result.title }, li);
        });
      }
  },
  error: function(error) {
      targetNode.innerHTML = "An unexpected error occurred: " + error;
  }
};
dojo.io.script.get(jsonpArgs);
});

