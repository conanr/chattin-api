require 'chattin_api/proxies/comment_proxy'

module ChattinApi
  class Client
    attr_reader :connection
    private :connection

    def initialize(connection)
      @connection = connection
    end

    def comments
      Proxies::CommentProxy.new(connection)
    end
    
    def presentations
      Proxies::PresentationProxy.new(connection)
    end

    def invites
      Proxies::InviteProxy.new(connection)
    end
    
    def users
      Proxies::UserProxy.new(connection)
    end
  end
end
