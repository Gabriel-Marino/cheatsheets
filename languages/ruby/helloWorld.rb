class Hello
# def initialize(name =  "World!")
  def initialize(name)
    @name = name.capitalize
  end

  def print
    puts "Hello #{@name}"
  end
end

if ARGV.length > 0
  name = ARGV[0] + "!"
else
  name = "world!"
end

hello = Hello.new(name)
hello.print
