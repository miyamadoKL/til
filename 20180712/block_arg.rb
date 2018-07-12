def greeting_ja(&block)
  texts = ['おはよう', 'こんにちは', 'こんばんは']
  greeting_common(texts, &block)
end

def greeting_en(&block)
  texts = ['Good morning.', 'Good afternoon.', 'Good evening.']
  greeting_common(texts, &block)
end

def greeting_common(texts, &block)
  puts texts[0]
  puts block.call(texts[1])
  puts texts[2]
end

greeting_ja do |text|
  text * 2
end
#=> おはよう
#   こんにちはこんにちは
#   こんばんは

greeting_en do |text|
  text.upcase
end
#=> Good morning.
#   GOOD AFTERNOON.
#   Good evening.
