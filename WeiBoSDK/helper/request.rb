require File.dirname(__FILE__) + '/config' 
require 'net/http'

module WeiBoSDK
  class Request
    def self.generateUrl (uri)
      "#{CONFIG::HOST}#{uri}.json"
    end
    def self.exec(uri, method, params, &block)
      url = URI(Request::generateUrl(uri))
      if (method == 'get')
        url.query = URI.encode_www_form(params)
        Net::HTTP.get(url)
      else
        Net::HTTP.post_form(url, params).body
      end
        
    end
  end
end
