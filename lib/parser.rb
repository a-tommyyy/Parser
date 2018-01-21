require_relative "parser/version"
require_relative "parser/context"
require_relative "parser/control"
require_relative "parser/define"
require_relative "parser/runner"

Parser.extend(Parser::Define)

module Parser
  def self.run(row, &block)
    return row unless block_given?

    job = Parser.define(block)

    Parser::Runner.run(row, job)
  end
end
