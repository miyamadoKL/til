currencies = {
  'japan' => 'yen',
  'us' => 'dollar',
  'india' => 'rupee'
}

currencies['italy'] = 'euro'
currencies.delete('india')

currencies.each { |key, value|
  puts "#{key}: #{value}"
}

a = { 'x' => '1', 'y' => '2', 'z' => '3' }
b = { 'z' => '3', 'y' => '2', 'x' => '1' }
p a == b #=> true
p a.length #=> 3
