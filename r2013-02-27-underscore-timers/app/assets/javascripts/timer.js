$(function(){

  $('#add_number').click(add_number);
  $('#square_number').click(square);
  $('#function').click(generic_function);
  $('#start').click(start_timer);
  $('#stop').click(stop_timer);

});

//Global variables

var numbers = [];
var timer = null;


//Functions

function start_timer()
{
  timer = setInterval(generate_random_number, 200);
}

function stop_timer()
{
  clearInterval(timer);
}

function generate_random_number()
{
  var number = _.random(0, 1000);
  numbers.push(number);
  newbox = $('<div>').addClass('numbox');
  newbox.text(number);
  $('#numbers').prepend(newbox);
}

function generic_function()
{
  empty_boxes();
  numbers = _.map(numbers, funky_calc);
  show_numbers();
}

function funky_calc(i)
{
  var equation = $('#number').val();
  return eval(equation);
}

function empty_boxes()
{
  var clear = $('#numbers').children('.clear');
  $('#numbers').empty();
  $('#numbers').append(clear);
  $('fn').click(generic_function);
}


function add_number()
{
  newbox = $('<div>').addClass('numbox');
  new_number = $('#number').val();
  new_number = parseInt(new_number, 10);
  numbers.push(new_number);
  newbox.text(new_number);
  $('#numbers').prepend(newbox);
  $('#numbers').val();
  $('#numbers').focus();
}


function square()
{
  empty_boxes();
  numbers = _.map(numbers, square_value);
  show_numbers();
}

function show_numbers()
{
  _.each(numbers, create_number_box);
}

function create_number_box(i)
{
  newbox = $('<div>').addClass('numbox');
  newbox.text(i);
  $('#numbers').prepend(newbox);
}


function square_value(i)
{
  return i*i;
}


