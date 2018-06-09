fruits = ['apple', 'orange', 'melon']
fruits.each_with_index{ |fruit, i| puts "#{i}: #{fruit}"}
fruits.each.with_index(1){ |fruit, i| puts "#{i}: #{fruit}"}
fruits.delete_if.with_index{ |fruit, i| fruit.include?('a') && i.odd? }
p fruits #=> ["apple", "melon"]

dimensions = [
  [10, 20],
  [30, 40],
  [50, 60],
]

areas = []
dimensions.each { |length, width|
  areas << length * width
}
p areas

dimensions.each.with_index { |(length, width), i|
  puts "length: #{length}, width: #{width}, i: #{i}"
}

sum = 0
5.times { |n| sum += n }
p sum #=> 10

a = []
10.upto(14){ |n| a << n }
p a #=> [10, 11, 12, 13, 14]

a = []
1.step(10, 2){ |n| a << n }
p a #=> [1, 3, 5, 7, 9]

a = []
a << 1 while a.size < 5
a << 2 until a.size >= 8
p a #=> [1, 1, 1, 1, 1, 2, 2, 2]

numbers = (1..5).to_a.shuffle
numbers.each { |n|
  puts n
  break if n == 5
}

fruits = ['apple', 'melon', 'orange']
numbers = [1, 2, 3]
catch :done do
  fruits.shuffle.each do |fruit|
    numbers.shuffle.each do |n|
      puts "#{fruit}, #{n}"
      if fruit == 'orange' && n == 3
        throw :done
      end
    end
  end
end

numbers = [1, 2, 3, 4, 5]
numbers.each do |n|
  next if n.even?
  puts n
end