# Methods
def find_data(a)
  if a
    'Data found.'
  else
    'Data not found.'
  end
end

# Boolean in Ruby
puts find_data(true)  #=>Data found.
puts find_data(false) #=>Data not found.
puts find_data(nil)   #=>Data not found.

# Logical operators
p true && false #=>false
p true || false #=>true

# Assigned a value with a if statement.
country = 'italy'

greeting = 
  if country == 'japan'
    'こんにちは'
  elsif country == 'us'
    'Hello'
  elsif country == 'italy'
    'ciao'
  else
    '???'
  end

  puts greeting #=>ciao

