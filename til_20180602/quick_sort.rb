def average(ary)
  avg = ary.reduce(&:+) / ary.length
end

def average_sample(ary, count)
  average(count.times.map{ ary.sample })
end

def select_pivot ary, size
  if size < 4096
    average(ary)
  else
    average_sample(ary, 16)
  end
end

def qsort ary
  if ary.length == 1
    return ary
  elsif ary.length == 2
    return ary if ary[0] < ary[1]
    return [ary[1], ary[0]]
  end

  pivot = select_pivot ary, ary.length
  left = []
  right = []
  ary.each{ |num|
    if num < pivot
      left << num
    else
      right << num
    end
  }
  qsort(left) + qsort(right)
end

require 'pp'

array = (0..100).to_a.sample(20)
pp array
pp(sorted_array = qsort(array))
puts "is_sorted: #{array.sort == sorted_array}"
