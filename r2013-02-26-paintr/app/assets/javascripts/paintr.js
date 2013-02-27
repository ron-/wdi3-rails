$(function(){

  $('#add_color').click(add_to_palette);
  $('#add_photo').click(add_to_album);
  $('#palette').on('click', '.color_box', set_color);
  $('#album').on('click', '.color_box', set_canvas_background);
  $('#clear_colors').click(delete_all);
  $('#clear_photos').click(delete_all_photos);
  $('#canvas').on('mouseover', '.paint', paint_color);
  create_paint_boxes();

});

function paint_color(){
  var color = $('#selected').css('background-color');
  var box = $(this);
  box.css('background-color', color);
}



function create_paint_boxes()
{
  for(i=0; i < 5016; i++)
  {
    var paint = $('<div>');
    paint.addClass('paint');
    $('#canvas').prepend(paint);
  }
}


function set_color(){
  var box = $(this);
  var color = box.css('background-color');
  $('#selected.color_box').css('background-color', color);
}

function set_canvas_background(){
  var photo = $(this).children().first();
  var url = photo.attr('src');
  $('#canvas').css('background', "url(" + url + ")");
}


// add color to palette
function add_to_palette(){
  new_color = $('#color').val();
  box = $('<div>').addClass('color_box');
  $('#palette').prepend(box.css('background-color', new_color));
  $('#color').val('');
  $('#color').focus();
}

function add_to_album(){
  photo_url = $('#photo').val();
  box = $('<div>');
  i = $('<img>');
  i.attr('src', photo_url);
  box.prepend(i);
  box.addClass('color_box');
  $('#album').append(box);
  $('#photo').val('');
  $('#photo').focus();

}

function delete_all_photos(){
  $('#album').empty();
  // $('#selected.color_box').css('background-color', 'white');
}



function delete_all(){
  $('#palette').empty();
  $('#selected.color_box').css('background-color', 'white');
}