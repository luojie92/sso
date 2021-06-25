require "monitor"
require "redis"
require 'digest/md5'
module Sso
  class Client

    include Connection::Base
    include Connection::Message
    
    attr_accessor :host

    attr_accessor :agentid

    def initialize(options = {})
      @host = options[:host] || Sso.configuration.host
      @agentid = options[:agentid] || Sso.configuration.agentid
    end
  end
end
