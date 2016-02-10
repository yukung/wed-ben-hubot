module.exports = (robot) ->

  robot.respond /prefecture list/i, (msg) ->
    request = msg.http('http://geoapi.heartrails.com/api/json')
                          .query(method: 'getPrefectures')
                          .get()
    request (err, res, body) ->
      json = JSON.parse body
      msg.send json.response.prefecture
