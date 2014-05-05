# encoding: utf-8
require 'json'
require 'multi_json'

module API
  module Helper
    def parse_body str
      str == '' ? {} : JSON.parse(str, {symbolize_names: true})
    end

    def json(content)
      MultiJson.dump(content, pretty: true)
    end
 
    def decode_json(content)
      MultiJson.load(content, symbolize_keys: true)
    end
 
    def authorize(user)
      browser.authorize(user.email, "foobar")
    end
 
    def should_be_json
      browser.last_response.headers["Content-Type"].should == "application/json;charset=utf-8"
    end
 
    def should_200(payload = nil)
      browser.last_response.body.should == json(payload) if payload
      browser.last_response.status.should == 200
    end
   
    def should_201
      browser.last_response.status.should == 201
    end
   
    def should_204
      browser.last_response.status.should == 204
      browser.last_response.body.should == ""
      browser.last_response.headers["Content-Type"].should == nil
    end
   
    def should_400(message = nil)
      browser.last_response.body.should == json({message: message || "Bad request"})
      browser.last_response.status.should == 400
    end
   
    def should_401(payload = {message: "Authorization required"})
      browser.last_response.body.should == json(payload)
      browser.last_response.status.should == 401
    end
   
    def should_403(message = nil)
      browser.last_response.body.should == json({message: message || "Forbidden"})
      browser.last_response.status.should == 403
    end
   
    def should_404
      browser.last_response.body.should == json({message: "Not found"})
      browser.last_response.status.should == 404
    end
   
    def should_422
      browser.last_response.status.should == 422
    end

  end
end