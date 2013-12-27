module Yapper
  # @private
  module Connection
    private

    def connection(format=format)
      Yammer::Client.new(access_token: oauth_token, endpoint: endpoint)
    end
  end
end
