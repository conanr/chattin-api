require 'chattin_api/proxies/abstract_proxy'

module ChattinApi
  module Proxies 
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
