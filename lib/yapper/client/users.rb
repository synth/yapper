module Yapper
  class Client
    # Defines methods related to manipulating users
    module Users
      def find_by_id(id, options={})
        raise ArgumentError, "must supply an id in Yapper::Client::Users#find_by_id" if id.blank?
        response = get("users/#{id}", options, :json)
      end

      def users(options={})
        response = get("users", options, :json)
      end
      
      def in_group(group_id, options={})
        raise ArgumentError, "must supply a group id in Yapper::Client::Users#in_group" if in_group.blank?
        response = get("users/in_group/#{group_id}", options, :json)
      end

      def current(options={})
        response = get("users/current", options, :json)
      end

      def followers(name, options={})
        raise ArgumentError, "must supply a name in Yapper::Client::Users#followers" if name.blank?
        response = get("users/following/#{name}", options, :json)
      end

      def following(email, options={})
        raise ArgumentError, "must supply an email in Yapper::Client::Users#following" if email.blank?
        response = get("users/by_email?email=#{email}", options, :json)
      end

    end
  end
end
