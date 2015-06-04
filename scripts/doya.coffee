# Description:
#  どやがお
#
# Commands:
#   どやあ - どやあ！

module.exports = (robot) ->
  robot.hear /どやあ|ドヤア|ﾄﾞﾔｧ|ﾄﾞﾔ/, (msg) ->
    msg.send "http://33.media.tumblr.com/02a02802c049cabf2952c5d3a9d7ff14/tumblr_nefop7p8AH1s1rzw4o1_400.gif"
