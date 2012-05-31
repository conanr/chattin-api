require 'chattin_api/proxies/comment_proxy'

module ChattinApi
  class Client
    DEFAULTS = {:port => 80}

    attr_reader :connection
    private :connection

    def initialize(connection)
      @connection = connection
    end

    def comments
      Proxies::CommentProxy.new(connection)
    end
  end
end
