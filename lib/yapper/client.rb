module Yapper
  # Wrapper for the Yammer REST API
  #
  # @note All methods have been separated into modules and follow the same grouping used in {http://developer.yammer.com/api/ the Yammer API Documentation}.
  # @note From Yammer: When polling for messages, do not exceed one poll per minute. Clients polling excessively will be blocked. However, you may sometimes need to fetch messages more frequently than once per minute, for example, if a user flips between "following", "sent" and "received" feeds quickly), and this is allowed for a few requests. Do not attempt to decrease message latency in your client by checking for new messages more frequently than once per minute.
  class Client < API
    # Require client method modules after initializing the Client class in
    # order to avoid a superclass mismatch error, allowing those modules to be
    # Client-namespaced.
    require 'yapper/client/messages'
    require 'yapper/client/feed'
    require 'yapper/client/users'
    require 'yapper/client/search'
    require 'yapper/client/suggestions'
    require 'yapper/client/groups'
    require 'yapper/client/activity'

    alias :api_endpoint :endpoint

    include Yapper::Client::Messages
    include Yapper::Client::Feed
    include Yapper::Client::Users
    include Yapper::Client::Search
    include Yapper::Client::Suggestions
    include Yapper::Client::Groups
    include Yapper::Client::Activity
  end
end
