$( document ).ready(function() {
    $("td.day").on("click", function(){
      $.ajax({
        url: "http://localhost:3000/events/new",
        dataType: 'html',
        type: 'get'
      })
      // console.log($('span.calendar-title').text() + " " + $(this).children().text());
    })
});
