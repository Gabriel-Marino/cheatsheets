class Integer
  def =?(number)
    self == number
  end
end

unless ARGV[0] && ARGV[1]
  p "Write a number"
  num1 = gets.chomp.to_f
  p "Another number"
  num2 = gets.chomp.to_f
else
  num1 = ARGV[0].to_f
  num2 = ARGV[1].to_f
end
p num1 =? num2
