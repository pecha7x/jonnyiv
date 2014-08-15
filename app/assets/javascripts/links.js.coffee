links =
  init: ->
    @popus()

  popus: ->
    $(".popup").click (event) ->
      event.preventDefault()
      width = 575
      height = 400
      left = ($(window).width() - width) / 2
      top = ($(window).height() - height) / 2
      url = @href
      opts = "status=1" + ",width=" + width + ",height=" + height + ",top=" + top + ",left=" + left
      window.open url, $(this).data('type'), opts
      false

$ ->
  links.init()