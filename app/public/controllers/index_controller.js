$(document).ready(function(){
  updateResult();
  $('#select-movies').change(updateResult());
});

function updateResult(){
  rating = 'IMDb: 6.8'
  $('#imdb-result').html = rating;
};
