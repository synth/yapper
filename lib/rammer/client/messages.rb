module Yammer
  class Client
    # Defines methods related to manipulating messages
    module Messages
      # Creates a new message from the authenticating user
      #
      # @note A status update with text identical to the authenticating user's current status will be ignored to prevent duplicates.
      # @format `:json`, `:xml`
      # @authenticated true
      # @rate_limited false
      # @param body [String] The text of your message.
      # @param options [Hash] A customizable set of options.
      # @option options [Integer] :in_reply_to_message_id The ID of an existing message that the message is in reply to.
      # @option options [Integer] :group_id The ID of the group in which this message belongs.
      # @option options [Integer] :replied_to_id The message ID this message is in reply to, if applicable.
      # @option options [Integer] :direct_to_id the ID of the user to which this message will be sent as a private message.
      # @option options [String] :broadcast If `true` this message should be broadcasted to all users. *Must be an admin*
      # @option options [Integer] :topic*n* Topics to apply to the message. Can use topic1 through topic20.
      # @return [Hashie::Mash] The created message.
      # @see http://developer.yammer.com/api/#messages-manipulating
      # @example Creates a new message for the authenticating user
      #   Yammer.update("I just posted a status update via the Yammer Ruby Gem!")
      def update(message, options={})
        response = post('messages', options.merge(:body => message))
        format.to_s.downcase == 'xml' ? response['response']['messages'] : response
      end
    end
  end
end
