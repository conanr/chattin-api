require 'chattin_api/proxies/abstract_proxy'

module ChattinApi
  module Proxies
    class UserProxy < AbstractProxy

      def all
        connection.get "/api/v1/users"
      end

      def find(id)
        connection.get "/api/v1/users/#{id}"
      end

      def create(auth_hash)
        connection.post "/api/v1/users", auth_hash
      end

      def update(id, attributes)
        connection.put "/api/v1/users/#{id}", attributes
      end

      def destroy(id)
        connection.delete "/api/v1/users/#{id}"
      end

      def all_authentications
        connection.get "/api/v1/authentications"
      end

      def find_authentication(id)
        connection.get "api/v1/authentications/#{id}"
      end

      def destroy_authentication(id)
        connection.delete "api/v1/authentications/#{id}"
      end
    end
  end
end
