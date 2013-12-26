require 'yam'
require 'rammer/api'
require 'rammer/client'
require 'rammer/configuration'
require 'rammer/error'

module Rammer
  extend Configuration
  class << self
    # Alias for Rammer::Client.new
    #
    # @return [Yammer::Client]
    def new(options={})
      Rammer::Client.new(options)
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
