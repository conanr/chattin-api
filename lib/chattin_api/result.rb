module ChattinApi
  class Result
    attr_reader :status
    attr_reader :value

    def initialize(status, value)
      @status = status
      @value = value
    end

    def success?
      (200..299).include? status
    end

    def errors
      value.errors
    end
  end
end
