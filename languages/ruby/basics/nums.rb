# ruby ignores undescores with numbers
p 123_456_789 # return 123456789

# as ruby being being totally oop, so even numbers are objects and the math operators are methods
p "5 + 2 = #{5 + 2}"
p "5.send(\'+\', 2) = #{5.send("+", 2)}"
# this two above line give the result, once everything is an object 
#
# Overwriting sum method
class Integer
  def +(number)
    self - number
  end
end
p "10 + 5 = #{10 + 5}"
