text = <<TEXT
I love Ruby.
Python is a great language.
Java and Javascript are different.
TEXT

p text.scan(/[A-Z][A-Za-z]+/)

text = <<TEXT
私の郵便番号は1234567です。
僕所住所は6777056 兵庫県西脇市板波町1234だよ。
TEXT

puts text.gsub(/(\d{3})(\d{4})/, '\1-\2')

p '0123-4567' =~ /\d{3}-\d{4}/ #=> 1
p 'Hello' =~ /\d{3}-\d{4}/ #=> nil

if 'Scala' =~ /[A-Z][A-Za-z]+/
  puts 'Matched'
else
  puts 'Not Matched'
end
