require 'hashie'
require 'json'

module ChattinApi
  module Parser
    def self.parse(json_text)
      return nil if json_text.strip.empty?

      json = JSON.parse(json_text)

      if json.is_a?(Array)
        json.map { |item| Hashie::Mash.new(item) }
      else
        Hashie::Mash.new(json)
      end
    end
  end
end
