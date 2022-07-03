# a method is declared with def keywork
# return is optional, ruby always return the last line of the method
#

def sum(num1 = 0, num2 = 0)
  num1 + num2
end

def sub(num1: 0, num2: 0)
  num1 - num2
end

num1 = ARGV[0].to_f
num2 = ARGV[1].to_f

p "#{num1}, #{num2}, #{sum(num1, num2)}"
p "#{num1}, #{num2}, #{sub(num1: num1, num2: num2)}"
p "#{num1}, #{num2}, #{sub(num1: num2, num2: num1)}"
p "#{num1}, #{num2}, #{sub(num1: num1)}"
p "#{num1}, #{num2}, #{sub(num2: num1)}"
