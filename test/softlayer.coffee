Softlayer = require '../src/softlayer'

describe 'Softlayer', ->
  sl_info =
    "username": "bob@lol.com",
    "api_key": "312f2edfszf23"

  encoded_username = "bob%40lol.com"

  beforeEach (done) ->
    done()

  afterEach (done) ->
    done()

  it "should have username and api keys set on creation", (done) ->
    sl = new Softlayer(sl_info.username, sl_info.api_key)
    sl.username.should.equal(encoded_username)
    sl.api_key.should.equal(sl_info.api_key)
    done()

  it "should be able to create a service object", (done) ->
    sl = new Softlayer(sl_info.username, sl_info.api_key)
    svc = sl.service('SoftLayer_Account')
    svc.sl.username.should.equal encoded_username
    svc.sl.api_key.should.equal sl_info.api_key
    svc.service.should.equal 'SoftLayer_Account'
    done()

  it "should get base sl object", (done) ->
    dup_sl =
      url: sl.url
      username: 
      api_key: 
    svc = new SoftlayerService(dup_sl, 'SoftLayer_Account')
    rest.get svc.request_url('Hardware'), (err, res) ->
      console.log resp
    done()
