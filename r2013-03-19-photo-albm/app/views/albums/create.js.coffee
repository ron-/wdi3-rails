$('#form').empty();
$('#albums').empty();
$('#albums').append('<%=j render(:partial => 'albums/albums') %>');