module ChattinApi
  module Proxies
    class AbstractProxy
      attr_reader :connection

      def initialize(connection)
        @connection = connection
      end
    end
  end
end
