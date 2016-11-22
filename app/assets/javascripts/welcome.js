// $( document ).ready(function() {
//     $("td.day").on("click", function(){
//       $.ajax({
//         url: "http://localhost:3000/events/new",
//         dataType: 'html',
//         type: 'get'
//       })
//       // console.log($('span.calendar-title').text() + " " + $(this).children().text());
//     })
// });

// document.addEventListener('page:load', eventFormToggle)
$(document).on('turbolinks:load',eventFormToggle)
$('document').ready(function(){
console.log("loading js");

})
function eventFormToggle() {
  $('td').on("click",function(){
    var $cell = $(($(this).children()[2]))
    $('.calendar-cell').css("visibility", "hidden");
    $cell.css("visibility", "visible");
    $cell[0].children[0].children[3].children[0].style.display = "none";
    $cell[0].children[0].children[3].children[1].style.display = "none";
    $cell[0].children[0].children[3].children[2].style.display = "none";
  })
  }
