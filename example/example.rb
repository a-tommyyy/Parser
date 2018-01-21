class Foo
  def process(row)
    row = "bye"
  end
end

row = "hi"
Parser.run(row) do
  parse Foo
end
# => "bye"
