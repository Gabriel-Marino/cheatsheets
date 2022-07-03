# list of values separeted by commas
# arrays accpeted diferrent types inside
#

arr1 = []
arr2 = Array.new

arr1[0] = true
arr1[1] = 1
arr1 << "number"
arr1.append(arr1.length)
p arr1
p arr1.last
p arr1[arr1.length - 1]
p "Is the array empty? \n #{arr2.empty?}"

arr2 << [0, 1, 2, false]
p arr2
arr2 = [0, 1, 2, false]
p arr2

arrs = arr1 + arr2
arrd = arr1 - arr2

p arrs
p arrd
