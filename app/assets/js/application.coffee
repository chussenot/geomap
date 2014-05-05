$ ->
  po = org.polymaps
  
  defaultLocation = {lat:48.853537, lon:2.348305}
  map = po.map()
  .container(document.getElementById("map")
  .appendChild(po.svg("svg")))
  .zoomRange([1, 20])
  .zoom(13)
  .center(defaultLocation)
  
  map.add po.image().url(po.url("http://{S}tile.cloudmade.com" + "/1a1b06b230af4efdbb989ea99e9841af" + "/998/256/{Z}/{X}/{Y}.png").hosts(["a.","b.","c.",""]))
  
  map.add(po.interact())
  .add(po.compass().pan("none"));