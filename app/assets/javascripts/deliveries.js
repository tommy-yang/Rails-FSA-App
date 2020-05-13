document.body.addEventListener('ajax:success', function (event) {
  const detail = event.detail
  const data = { ...detail[0], status: detail[1], xhr: detail[2] }
  console.log(data)
})
