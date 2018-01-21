module Parser
  class Context
    def initialize(control)
      @control = control
    end

    def parse(class_name, *args)
      @control.parses << { class_name: class_name, args: args }
    end
  end
end
