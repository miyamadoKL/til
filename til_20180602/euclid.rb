def euclid a, b
  a, b = b, a%b while b > 0
  p a
end

r1 = (101..1000).to_a.sample
r2 = (1..50).to_a.sample
p r1
p r2
euclid r1, r2
