module Parser::Define
  def define(block)
    control = Parser::Control.new
    context = Parser::Context.new(control)
    # 個々の処理がわからない
    context.instance_eval(&block)
  end
end
