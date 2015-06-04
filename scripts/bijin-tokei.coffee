# Description:
#   bijin-tokei APIを叩くよ
#
# Commands:
#   bijin tokei | tokei - 画像で時間がわかるよ

require('date-utils')

module.exports = (robot) ->
  robot.respond /bijin tokei|tokei/i, (msg) ->
    # 日本時間のタイムゾーン(分)
    timezone_offset = 9 * 60

    Date.prototype.utc2local = ->
      this.setTime(
        this.getTime()+(this.getTimezoneOffset()*60*1000)
      )

    dt = new Date()
    dt.utc2local()

    dt.setTime( dt.getTime()+(timezone_offset*60*1000))


    formatted = dt.toFormat("HH24MI")
    img_url = 'http://www.bijint.com/jp/tokei_images/TIME.jpg'.replace('TIME', formatted)
    msg.send(img_url)
