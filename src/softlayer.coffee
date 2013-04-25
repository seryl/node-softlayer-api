Service = require './service'

###
The Base Softlayer class.
###
class Softlayer

  ###
  @param {String} @username Softlayer api username
  @param {String} @api_key Softlayer api key
  ###
  constructor: (@username, @api_key) ->
    @url = "api.softlayer.com/rest/v3"

  ###
  Returns a new instance of the given service.

  @param {String} svc The service object to create
  @return {Object} An instance of the given service
  ###
  service: (svc) ->
    new Service
      username: @username
      url: @url
      api_key: @api_key
      , svc

module.exports = Softlayer
