# hash map or dictionary, key-value struct
#

hash1 = Hash.new
hash2 = {}

hash1 = {
  :name => "name",
  :age => 42069
}

hash2 = {
  name: "name",
  age: 69420
}

p hash1[:name]
p hash2.keys
p hash2.values

p hash2[:age]

p "Is the dictionary empty? \n #{hash2.empty?}"

hash2[:yes] = false
p hash2[:yes]
p hash2.keys
