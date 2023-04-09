def count_diamonds(expression)
  diamonds = 0
  stack = []

  expression.each_char do |char|
    if char == '<'
      stack.push(char)
    elsif char == '>' && stack.last == '<'
      stack.pop
      diamonds += 1
    end
  end

  diamonds
end

expression = "<<.<<..>><>><.>.>.<<.>.<.>>>><>><>>"
result = count_diamonds(expression)
puts "Quantidade de diamantes extraídos: #{result}"
