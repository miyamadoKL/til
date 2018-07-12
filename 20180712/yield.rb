def greeting
  puts 'Good morning.'
  if block_given?
    yield
  end
  puts 'Good evening.'
end

greeting do
  puts 'Good afternoon.'
end
#=> Good morning.
#   Good afternoon.
#   Good evening.
