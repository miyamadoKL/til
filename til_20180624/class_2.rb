class User
  def initialize(name, age)
    @name = name
    @age = age
  end

  def hello
    "Hello, I am #{@name}."
  end
end

user = User.new('Alice', 20)
puts user.hello
