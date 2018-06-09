def liquid?(temperature)
  (1...100).include?(temperature)
end

def charge(age)
  case age
  when 0..5
    0
  when 6..12
    300
  when 13..18
    600
  else
    1000
  end
end
range_and_under = 1..5
p range_and_under.include?(5) #=> true

range_less_than = 1...5
p range_less_than.include?(5) #=> false

a = 'abcdef'
puts a[2..4] #=>cde

p liquid?(-1) #=> false
p liquid?(0) #=> true
p liquid?(100) #=> false

p charge(3)
p charge(7)
p charge(16)
p charge(25)

p (1..5).to_a #=> [1, 2, 3, 4, 5]
p [*10...15].inject(0){ |r, n| r += n } #=> 60
