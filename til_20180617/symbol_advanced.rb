p %s(ruby is fan) #=> :"ruby is fan"
p %i(apple orange melon) #=> [:apple, :orange, :melon]

name = 'Alice'
p %I(hello\ngood-bye #{name.upcase}) #=> [:"hello\ngood-bye", :ALICE]

p :apple == 'apple'.to_sym #=> true
p 'apple' == :apple.to_s #=> true
