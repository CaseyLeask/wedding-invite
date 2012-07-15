$('a.navigation').click(function() {
  var menu = $(this).siblings('ul');

  if (menu.hasClass('open')) {
    menu.removeClass('open');
    $('i', this).addClass('icon-chevron-down');
    $('i', this).removeClass('icon-chevron-up');
  }
  else {
    menu.addClass('open');
    $('i', this).addClass('icon-chevron-up');
    $('i', this).removeClass('icon-chevron-down');
  }
});
