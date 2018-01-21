require "parser/version"

Parse.extend(Parser::Define)

module Parser
  def self.run(row, &block)
    return row unless block_given?

    job = Parser.define(block)

    Parser::Runner.run(row, job)
  end
end
