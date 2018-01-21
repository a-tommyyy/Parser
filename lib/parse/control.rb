module Parser
  class Control
    def config
      @config ||= {}
    end

    def parses
      @parses ||= []
    end
  end
end
