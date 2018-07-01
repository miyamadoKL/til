# About 'self' keyword
class User
  attr_accessor :name

  def initialize(name)
    @name = name
  end

  # When missing 'self', it cannot call a method.
  def rename_to_bob
    name = 'Bob'
  end

  def rename_to_carol
    self.name = 'Carol'
  end
end

user = User.new('Alice')
puts user.name #=> Alice

user.rename_to_bob
puts user.name #=> Alice (Not Bob)

user.rename_to_carol
puts user.name #=> Carol
