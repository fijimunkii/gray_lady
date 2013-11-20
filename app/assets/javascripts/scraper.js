$(function() {

  function getLinks(url) {
    return $.ajax({
      url: '/scraper/get_links',
      type: 'post',
      data: { url: url }
    });
  }

  function getImages(url) {
    return $.ajax({
      url: '/scraper/get_images',
      type: 'post',
      data: { url: url }
    });
  }

  $('#links').on('click', function() {
    var url = $('#url').val();

    getLinks(url).done(function(data) {
      console.log(data);

      for (var i=0; i<data.length; i++) {
        var $pTag = $('<p>'),
            $link = $('<a>');
        $link.attr('href', data[i]);
        $link.text(data[i]);
        $pTag.append($link);
        $('body').append($pTag);
      }
    });
  });

  $('#images').on('click', function() {
    var url = $('#url').val();

    getImages(url).done(function(data) {
      console.log(data);

      for (var i=0; i<data.length; i++) {
        var $pTag = $('<p>'),
            $image = $('<img>');
        $image.attr('src', data[i]);
        $pTag.append($image);
        $('body').append($pTag);
      }
    });
  });

});
