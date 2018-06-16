def buy_burger(menu, drink: true, potato: true)
  puts menu

  if drink
    puts 'Drink'
  end

  if potato
    puts 'Potato'
  end
end

buy_burger('fish')

person = {
  name: 'Alice',
  age: 20,
  friends: ['Bob', 'Carol'],
  phones: { home: '1234-0000', mobile: '5678-0000' }
}

puts person[:age]
puts person[:friends]
puts person[:phones][:mobile]
