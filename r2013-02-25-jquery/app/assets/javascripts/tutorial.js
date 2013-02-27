$(function(){

  // $('#btn').click(cool_popup);
  // $('#btncolor').click(changebackg);
  // $('#btnhide').click(hideit);
  // $('#btnshow').click(showit);
  $('#areacalc').click(area);

});

function area()
{
  var length = $('#length').val();
  var height = $('#height').val();
  var area = parseInt(length) * parseInt(height);
  $('#area').text('The area is ' + area);
}









// function cool_popup()
// {
//   var name = $('#name').val();
//   alert(name + ', you have won 5 dollars');
// }


// function changebackg()
// {
//   var color = $('#color').val();
//   $('body').css('background-color', color);
// }

// function hideit()
// {
//   $('h1').hide();
// }

// function showit()
// {
//   $('h1').show();
// }

