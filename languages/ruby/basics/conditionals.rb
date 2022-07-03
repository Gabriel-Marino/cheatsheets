p "Wite a number"
num = gets.chomp.to_i

if num < 10
  p "the number is unitary"
elsif num >= 10 && num < 20
  p "the number is in the first dozens"
elsif !(num > 100)
  p "not in the first dozens, but not bigger than hundreds"
else
  p "the number is bigger than hundreds"
end

p "Write a lang name"
name = gets.chomp.downcase

case name
when "ruby"
  p "A cool language"
when "javascript"
  p "nothing against, but TypeScript is better"
when "typescript"
  p "this is a good one"
when "python"
  p "nothing against, but ruby is better"
when "c"
  p "The best one"
when "java"
  p "nothing against, but exist betters one"
when "rust"
  p "a good one"
else
  p "i can't speak about this one"
end

p "nice" if num == 69
p "this number is a good one" if num == 42 || num == 69
p num == 69 ? "nice" : "poggers"

var1 = nil
var1.nil?  # true
!var1      # true
"".nil?   #false, but legnth = 0

p var1
var1 = "var1" if var1.nil?
p var1
var2 = nil
var2 = "var2" if !var2
p var2
var3 = nil
var3 = "var3" unless var3
p var3
var4 = nil
var4 ||= "var4"
p var4

puts "empty string is nil: #{"".nil?}\nempty string length: #{"".length}"
