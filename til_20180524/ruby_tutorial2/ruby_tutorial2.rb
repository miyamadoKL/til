# Numeric
p 1.to_s  #=>"1"
# nil
p nil.to_s #=>""
# true
p true.to_s #=>"true"
# false
p false.to_s #=>"false"
# Regular expressions
p /\d+/.to_s #=>"(?-mix:\\d+)"
# Converting numeric 1 to string. (with argument parentheses)
p 1.to_s() #=>"1"
# Converting numeric to hexadecimal expression. (without argument parentheses)
p 10.to_s 16 #=>"a"
# Writing 3 sentences in 1 line with semicolons.
p 1.to_s; p nil.to_s; p 10.to_s(16)