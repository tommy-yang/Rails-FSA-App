window.onload = () => {
  const form = document.getElementById('delivery-form')
  const mapElement = document.getElementById('map')
  
  if (form) {
    const ne_lat = 49.19844515
    const ne_lng = -123.22496118
    const sw_lat = 49.31617132
    const sw_lng = -123.02324196
    const sw = new google.maps.LatLng(ne_lat, ne_lng)
    const ne = new google.maps.LatLng(sw_lat, sw_lng)
    const bounds = new google.maps.LatLngBounds(sw, ne)
    const map = new google.maps.Map(mapElement)

    const deliveryNeLat = document.getElementById('delivery_ne_lat')
    const deliveryNeLng = document.getElementById('delivery_ne_lon')
    const deliverySwLat = document.getElementById('delivery_sw_lat')
    const deliverySwLng = document.getElementById('delivery_sw_lon')

    map.fitBounds(bounds)

    google.maps.event.addListener(map, 'dragend', function () {
      let bounds = this.getBounds()
      deliveryNeLat.value = bounds.getNorthEast().lat()
      deliveryNeLng.value = bounds.getNorthEast().lng()
      deliverySwLat.value = bounds.getSouthWest().lat()
      deliverySwLng.value = bounds.getSouthWest().lng()
    })
  }
}

document.body.addEventListener('ajax:success', function (event) {
  const detail = event.detail
  const data = { ...detail[0], status: detail[1], xhr: detail[2] }
  const pointInput = document.getElementById('delivery-point')
  const geometryInput = document.getElementById('delivery-geometry')
  const withinInput = document.getElementById('delivery-within')
  const { point, geometry, within } = data

  pointInput.value = point
  geometryInput.value = geometry
  withinInput.value = within
})
