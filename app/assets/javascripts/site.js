var refreshRating = function() {
    $('.rating').raty( { path: '/assets', scoreName: 'comment[rating]' });
    $('.rated').raty({ path: '/assets',
        readOnly: true,
        score: function() {
            return $(this).attr('data-score');
        }
    });
};

$(document).on('turbolinks:load ajaxSuccess', function() {
    refreshRating();

    $(".img-zoom").elevateZoom({
      zoomWindowFadeIn: 500,
      zoomWindowFadeOut: 500,
      lensFadeIn: 500,
      lensFadeOut: 500
  });
});