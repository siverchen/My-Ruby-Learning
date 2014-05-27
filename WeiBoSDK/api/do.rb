require File.dirname(__FILE__) + '/../helper/request'
require File.dirname(__FILE__) + '/../helper/config'


module WeiBoSDK
  class Api
    
    attr_reader :controller, :action , :module
    
    def initialize(accesstoken)
      @appkey = CONFIG::APPKEY
      @accesstoken = accesstoken
    end
    
    def get(params = {}, &block)
      ret = Request::exec("#{@module}#{@controller}#{@action}", "get", params.merge({:source => @appkey, :access_token => @accesstoken}))
      @module = @controller = @action = nil;
      ret
    end
    
    def post(params = {}, &block)
      ret = Request::exec("#{@module}#{@controller}#{@action}", "post", params.merge({:source => @appkey, :access_token => @accesstoken}))
      @module = @controller = @action = nil;
      ret
    end
    
    def method_missing (id, *args, &block)
      if !self.module
        @module = "/" + id.to_s
      elsif !self.controller
        @controller = "/" +  id.to_s
      elsif !self.action
        @action = "/" +  id.to_s
      end
      self
    end
    
    
  end
  
end
