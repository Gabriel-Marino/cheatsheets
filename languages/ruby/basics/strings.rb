str = ARGV[0]
horizontalBar = "-" * 100

p horizontalBar

p str.length
p str
p "#{str} have #{str.length} letters"
p str.capitalize
p str.upcase # upcase with exclamation point (upcase!) modify the variable
p str.downcase
p str[0]
p str[0, str.length*rand]

p horizontalBar
