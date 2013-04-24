Service = require './service'

class Softlayer
  constructor: (@username, @api_key) ->

  ###
  Returns a service object for the given softlayer call
  ###
  service: (svc) ->
    new Service(@username, @api_key, svc)
