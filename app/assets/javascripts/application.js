// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .

$(function() {
  $('.scene-link').click(function(e) {
    var scene_id;
    if ($(this).id === "btn-play") {
      scene_id = 1;
    } else {
      scene_id = parseInt($(this).data('scene-id'));
    }

    $.ajax({
      url: '/next_scene',
      type: 'POST',
      data: {'scene_id': 1},
      dataType: 'script',
      format: 'js',
      succes: function() {
        console.log('success');

      },
      error: function(e, data) {
        console.log(e);
        console.log(data);
      }
    });
  })
});