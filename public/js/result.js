// References submit button on survey page
var $exampleText = $("#example-text");


// The API object contains methods for each kind of request we'll make
var API = {
  getExamples: function() {
    return $.ajax({
      url: "api/result",
      type: "GET"
    });
  }
};

// Gets data from the db and repopulates handlebars
var refreshExamples = function() {
  API.getExamples().then(function(data) {
    var $examples = data.map(function(example) {
      var $a = $("<a>")
        .text(example.text)
        .attr("href", "/example/" + example.id);

      var $li = $("<li>")
        .attr({
          class: "list-group-item",
          "data-id": example.id
        })
        .append($a);

      var $button = $("<button>")
        .addClass("btn btn-danger float-right delete")
        .text("ｘ");

      $li.append($button);

      return $li;
    });

    $exampleList.empty();
    $exampleList.append($examples);
  });
};
