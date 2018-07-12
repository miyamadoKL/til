def greeting
  puts 'Good morning.'
  text = yield 'Good afternoon.'
  puts text
  puts 'Good evening.'
end

greeting do |text|
  text * 2
end
#=> Good morning.
#   Good afternoon.Good afternoon.
#   Good evening.
