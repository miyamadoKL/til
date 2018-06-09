a = []
a << 1
a << 2
a << 3
a[4] = 50
p a #=> [1, 2, 3, nil, 50]

a.delete_at(1)
p a #=> [1, 3, nil, 50]
a[2] = 4
a.delete_if do |n|
  n.odd?
end
p a #=> [4, 50]

quo_rem = 14.divmod(3)
puts "商=#{quo_rem[0]}, 余り=#{quo_rem[1]}" #=> "商=4, 余り=2"

b = [1, 2, 3, 4, 5]
p b.select(&:odd?) #=> [1, 3, 5]

c = b.map{ |n| 10 * n }
p c #=> [10, 20, 30, 40, 50]

b_even = b.select{ |n| n.even? }
p b_even #=> [2, 4]

c_not_divide_by_4 = c.reject{ |n| n % 4 == 0}
p c_not_divide_by_4 #=> [10, 30, 50]

b_even_first = b.find{ |n| n.even? }
p b_even_first #=> 2

b_sum = b.inject(0){ |result, n| result += n }
p b_sum #=> 15

puts ['月','火','水','木','金','金'].reduce('月'){ |result, s| result += s }