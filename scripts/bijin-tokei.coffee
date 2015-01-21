require('date-utils')

module.exports = (robot) ->
  robot.respond /bijin tokei/i, (msg) ->
    dt = new Date()
    formatted = dt.toFormat("HH24MI")
    img_url = 'http://www.bijint.com/jp/tokei_images/TIME.jpg'.replace('TIME', formatted)
    msg.send(img_url)
