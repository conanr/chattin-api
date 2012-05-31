require 'faraday'

module ChattinApi
  class Connection
    DEFAULTS = {:port => 80}

    attr_reader :connection
    private :connection

    def initialize(options = {})
      options = DEFAULTS.merge(options)
      url = "#{options.fetch(:host)}:#{options.fetch(:port)}"
      @connection = Faraday.new(:url => url)
    end

    def post(url, body=nil)
      body_json = body.to_json if body

      response = connection.post do |req|
        req.url(url)
        req.headers['Accept'] = 'application/json'
        req.headers['Content-Type'] = 'application/json'
        req.body = body_json
      end

      Parser.parse(response.body)
    end

    def get(url, params={})
      response = connection.get do |req|
        req.url(url)
        req.headers['Accept'] = 'application/json'
        req.params = params
      end

      Parser.parse(response.body)
    end
  end
end
