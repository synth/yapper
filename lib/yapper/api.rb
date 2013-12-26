require 'yapper/authentication'
require 'yapper/configuration'
require 'yapper/connection'
require 'yapper/request'

module yapper
  # @private
  class API
    include Connection
    include Request
    include Authentication

    # @private
    attr_accessor *Configuration::VALID_OPTIONS_KEYS

    # Creates a new API
    def initialize(options={})
      options = yapper.options.merge(options)
      Configuration::VALID_OPTIONS_KEYS.each do |key|
        send("#{key}=", options[key])
      end
    end
  end
end
