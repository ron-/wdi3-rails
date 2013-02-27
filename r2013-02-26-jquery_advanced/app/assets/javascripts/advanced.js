$(function(){

  // $('#age').blur(blur_func);
  // $('#age').change(validate_age);
  // $('#name').focus(focus_func);
  // $('body').mousemove(colorize);
  $('body').keypress(shortcut);

});

function shortcut(data)
{
  var text =
  $('#text').text(text + String.fromCharCode(data.which))

  letter = String.fromCharCode(data.which);

  switch(letter)
  {
    case 'b':
      $('text').css('color', 'blue');
      break;
    case 'g':
      $('text').css('color', 'green');
      break;
    case 'y':
      $('text').css('color', 'yellow');
      break;
    case 'r':
      $('text').css('color', 'red');
      break;
    case 'p':
      $('text').css('color', 'purple');
      break;
    default:
      $('#text').append(letter);
  }


}


// function colorize(eventdata){

//   $('#x').text('X: ' + eventdata.clientX);
//   $('#y').text('Y: ' + eventdata.clientY);

//   if((eventdata.clientX % 2) == 0)
//     $('#x').css('color', '#222222');
//   else
//     $('#x').css('color', '#999999');


//   if((eventdata.clientY % 2) == 0)
//     $('#y').css('color', '#222222');
//   else
//     $('#y').css('color', '#999999');

// }


// var x = $('<p>').text('you are old');



// function validate_age()
// {
//   if($('#age').val() > 18)
//   {
//     (x).removeClass();
//     $('body').prepend(x);
//     (x).addClass('green');
//     $('#age').val('');

//   }
//   else
//   {
//     (x).removeClass();
//     $('body').prepend(x);
//     $(x).addClass('red');
//     $('#age').val('');
//   }
// }





// function blur_func()
// {
//   alert('blur');
// }

// function change_func()
// {
//   alert('change');
// }

// function focus_func()
// {
//   alert('focus');
// }