require 'chattin_api/proxies/abstract_proxy'

module ChattinApi
  module Proxies
    class CommentProxy < AbstractProxy
      def find(id)
        connection.get "/comments/#{id}"
      end

      def find_all_by_presentation_id(id)
        connection.get "/comments/presentation/#{id}"
      end

      def create(attributes)
        id = attributes[:presentation_id]
        connection.post "/comments/presentation/#{id}", attributes
      end
    end
  end
end
