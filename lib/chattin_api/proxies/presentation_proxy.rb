require 'chattin_api/proxies/abstract_proxy'

module ChattinApi
  module Proxies
    class PresentationProxy < AbstractProxy
      def find(id)
        connection.get "/presentations/#{id}"
      end

      def find_all
        connection.get "/presentations"
      end

      def create(attributes)
        connection.post "/presentations", attributes
      end
    end  

    class InviteProxy < AbstractProxy
      def create(attributes)
        connection.post "/invites", attributes
      end

      def find_all
        connection.get "/invites"
      end
    end
  end
end