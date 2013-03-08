$(function(){

  $('#show_chart').click(get_activity_name);

});


function get_activity_name(){

  var activity = $('#activities').val();
  console.log(activity);

  $.ajax({
    dataType: 'json',
    type: "get",
    url: "/exercises/chart/" + activity

  }).done(process_activity);

  return false;

}

function process_activity(exercises)
{
  $('#chart').empty();
  new Morris.Line({
  element: 'chart',
  data: exercises,
  xkey: 'completed',
  ykeys: ['value'],
  labels: ['Value']
});
}