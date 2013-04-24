class SoftlayerService
  constructor: (@username, @api_key, @service) ->

  object_mask: (mask, api_call) ->
    console.log "mask: #{mask}"
    console.log "api_call: #{api_call}"

exports = SoftlayerService
