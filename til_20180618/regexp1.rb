text = <<TEXT
I love Ruby.
Python is a great language.
Java and Javascript are different.
TEXT

p text.scan(/[A-Z][A-Za-z]+/) #=> ["Ruby", "Python", "Java", "Javascript"]

text = <<TEXT
私の郵便番号は1234567です。
僕所住所は6777056 兵庫県西脇市板波町1234だよ。
TEXT

puts text.gsub(/(\d{3})(\d{4})/, '\1-\2') #=> 123-4567, 677-7056...

p '0123-4567' =~ /\d{3}-\d{4}/ #=> 1
p 'Hello' =~ /\d{3}-\d{4}/ #=> nil

if 'Scala' =~ /[A-Z][A-Za-z]+/
  puts 'Matched'
else
  puts 'Not Matched'
end

text = '私の誕生日は1977年7月17日です。'
m = /(\d+)年(\d+)月(\d+)日/.match(text)
p m[0] #=> "1977年7月17日"
p m[1] #=> "1977"
p m[2] #=> "7"
p m[3] #=> "17"
p m[2, 2] #=> ["7", "17"]

m2 = text.match(/(?<year>\d+)年(?<month>\d+)月(?<day>\d+)日/)
p m2[:year] #=> "1977"

if /(?<year>\d+)年(?<month>\d+)月(?<day>\d+)日/ =~ text
  puts "#{year}/#{month}/#{day}" #=> 1977/7/17
end

p '12345 678 9'.scan(/\d+/) #=> ["12345, "678", "9"]

p '1977年7月17日 2016年12月31日'.scan(/(?:\d+)年(?:\d+)月(?:\d+)日/) #=> ["1977年7月17日", "2016年12月31日"]

text = '郵便番号は123-4567です'
p text[/\d{3}-\d{4}/] #=> "123-4567"
p text
p text.slice!(/\d{3}-\d{4}/) #=> "123-4567"
p text #=> "郵便番号はです"

text = '誕生日は1977年7月17日です'
p text[/(\d+)年(\d+)月(\d+)日/, 3] #=> "17"
p text.slice(/(?<year>\d+)年(?<month>\d+)月(?<day>\d+)日/, :month) #=> "7"

text = '123,456-789'
p text.split(',') #=> ["123", "456-789"]
p text.split(/,|-/) #=> ["123", "456", "789"]

p text.gsub(/,|-/, ':') #=> "123:456:789"

text = '誕生日は1977年7月17日です'
p text.gsub(/(\d+)年(\d+)月(\d+)日/, '\1-\2-\3') #=> "誕生日は1977-7-17です"
p text.gsub(/(?<year>\d+)年(?<month>\d+)月(?<day>\d+)日/,
'\k<year>,\k<month>,\k<day>') #=> 誕生日は1977,7,17です

 text = '123,456-789'
 hash = { ',' => '.', '-' => '/' }
 p text.gsub(/,|-/, hash) #=> "123.456/789"
