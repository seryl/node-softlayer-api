rest = require 'request'
url = require 'url'

###
The Softlayer service class.
###
class SoftlayerService

  ###
  @param {Object} sl The base softlayer configuration
  @param {String} service The name of the service to interact with
  ###
  constructor: (@sl, @service) ->

  ###
  Returns a new instance of the given service.

  @param {String} svc The service object to create
  @return {Object} An instance of the given service
  ###
  request_url: (property) ->
    url.resolve(
      "https://#{@sl.username}:#{@sl.api_key}@#{@sl.url}/",
      [@service, "#{property}.json"].join('/') )

module.exports = SoftlayerService
