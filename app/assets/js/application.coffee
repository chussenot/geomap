initMap = ->
  map         = undefined
  # set up the map
  map = new L.Map("map")
  # create the tile layer with correct attribution
  osmUrl = "http://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png"
  attribution = "Map data © <a href=\"http://openstreetmap.org\">OpenStreetMap</a> contributors"
  osm = new L.TileLayer(osmUrl,
    minZoom: 2
    maxZoom: 20
    attribution: attribution
  )
  defaultLocation = {lat:48.853537, lon:2.348305}
  map.setView new L.LatLng(defaultLocation.lat, defaultLocation.lon), 15
  map.addLayer osm
  
$ ->  
  $('.ui.button.search').click ->
    $( "input.search" ).focus().val('');
    $('.sidebar.top').sidebar('toggle')
    $('.ui.menu.views').toggle()
  $("#search").submit (event) ->
    $('.sidebar.left').sidebar('toggle')
    $('.ui.menu.views').toggle()

  initMap()
  $('.sidebar.top').sidebar('toggle')
  $('.ui.menu.views').hide()
  
  $('.advanced').click ->
    $(".ui.modal").modal('show')
    