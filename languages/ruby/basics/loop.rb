p "write a number"
num = gets.chomp.to_i
fatw = 1
fatu = 1
auxw = num
auxu = num
au = []
aw = []

while auxw > 0
  fatw *= auxw
  au << fatw
  auxw -= 1
end
p fatw

until auxu == 0
  fatu *= auxu
  aw << fatu
  auxu -= 1
  end
p fatu

range = 0..(num-1)
for i in range
  p i
end

range.each do |var|
  p var
end

hash = {first: 0, second: true, third: "aaaaaaaaaaaa"}
hash.each do |key, var|
  p "#{key} : #{var}"
end

#for item in au
#  p item
#end
#for item in aw
#  p item
#  break if item > 1000000
#end

# break -> exit loop
# return -> exit loop and method whre loop is contained
# next -> skip iteration and begin the next one
# redo -> restart the loop
