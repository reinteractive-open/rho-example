Rhoconnect.configure do |config|
  config.uri          = "http://localhost:9292"
  config.token        = "d630de69ceef409f8e731d13d2ccfc31"
  config.app_endpoint = "http://localhost:3000"
  config.authenticate = lambda { |credential|
    return true 
  }
end