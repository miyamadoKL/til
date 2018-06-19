class User
  attr_reader :first_name, :last_name, :age

  def initialize(first_name, last_name, age)
    @first_name = first_name
    @last_name = last_name
    @age = age
  end

  # A method generating a full name
  def full_name
    "#{first_name} #{last_name}"
  end
end

users = []
users << User.new('Alice', 'Ruby', 20)
users << User.new('Bob', 'Python', 30)

users.each { |user|
  puts "Full Name: #{user.full_name}, Age: #{user.age}"
}

catherine = User.new('Catherine', 'Scala', 25)
p catherine.full_name #=> "Catherine Scala"
