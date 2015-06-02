jQuery(function($) {

  var url = "https://data.cityofnewyork.us/resource/rmmq-46n5.json";

    var getCompostInfo = function(){
      return $.ajax({
        type: "GET",
        url: url,
        dataType: "json"
      });
    }

});
