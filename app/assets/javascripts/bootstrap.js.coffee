jQuery ->
  $("a[rel=popover]").popover()
  $(".tooltip").tooltip()
  $("a[rel=tooltip]").tooltip()

$ ->
  $('#tables-index td span.btn-success').hover(
    -> $($(this).children('a')).children('span').text('Abrir Cuenta')
    -> $($(this).children('a')).children('span').text('Disponible')
  )