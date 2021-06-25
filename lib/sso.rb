require 'roxml'
require 'multi_xml'
require 'ostruct'
require 'net/http'
require 'json'

require "sso/version"

require "sso/models/configuration"
require "sso/models/encrypt_message"
require "sso/helpers/prpcrypt"

require "sso/connection"
require "sso/client"

module Sso

  class << self

    # A Sso configuration object. See Sso::Configuration.
    attr_writer :configuration

    def configure
      yield(configuration)
    end

    def configuration
      @configuration ||= Configuration.new
    end

  end
end
