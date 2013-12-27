require 'yammer'
require 'yapper/api'
require 'yapper/client'
require 'yapper/configuration'
require 'yapper/error'

module Yapper
  extend Configuration
  class << self
    # Alias for Yapper::Client.new
    #
    # @return [Yapper::Client]
    def new(options={})
      Yapper::Client.new(options)
    end

    # Delegate to Yammer::Client
    def method_missing(method, *args, &block)
      return super unless new.respond_to?(method)
      new.send(method, *args, &block)
    end

    def respond_to?(method, include_private = false)
      new.respond_to?(method, include_private) || super(method, include_private)
    end
  end
end
