SoftlayerService = require '../src/service'

describe 'SoftlayerService', ->
  sl =
    "url": "api.softlayer.com/rest/v3",
    "username": "bob",
    "api_key": "312f2edfszf23"

  beforeEach (done) ->
    done()

  afterEach (done) ->
    done()

  it "should be able to generate request urls", (done) -> 
    svc = new SoftlayerService(sl, 'SoftLayer_Account')
    req_url = [
      "https://bob:312f2edfszf23@api.softlayer.com", "rest", "v3",
      "SoftLayer_Account", "Hardware.json" ].join('/')
    svc.request_url('Hardware').should.equal req_url
    done()
