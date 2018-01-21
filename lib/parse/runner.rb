module Parser
  module Runner
    extend self

    def run(row, control)
      run_process(
        row, 
        to_instances(control.parses)
      )
      row
    end

    def run_process(row, parses)
      parses.each do |parse|
        row = parse.process(row)
        break unless row
      end
      row
    end

    def to_instances(jobs)
      jobs.map do |job|
        to_instance(
          *jobs.value_at(:class_name, :args)
        )
      end
    end

    def to_instance(class_name, args)
      class_name.new(*args) if class_name
    end
  end
end
