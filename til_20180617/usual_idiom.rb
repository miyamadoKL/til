def find_currency(country)
  currencies = { japan: 'yen', us: 'dollar', india: 'rupee' }
  currencies[country]
end

def show_currency(country)
  if currency = find_currency(country)
    currency.upcase
  end
end

p find_currency(:india)

a = 'foo'
p a&.upcase #=> FOO

b = nil
p b&.upcase #=> nil

limit = nil
limit ||= 10
p limit #=> 10

limit = 20
limit ||= 10
p limit #=> 20

p !!nil #=> false
