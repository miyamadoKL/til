def bubble_sort(array)
  ary = array.dup
  pos_max = ary.length - 1

  (0...(pos_max)).each{|n|
    (0...(pos_max - n)).each{|ix|
      iy = ix + 1
      ary[ix], ary[iy] = ary[iy], ary[ix] if ary[ix] > ary[iy]
    }
  }

  ary
end

require 'pp'

array = (0..100).to_a.sample(20)
pp array
pp (sorted_array = bubble_sort(array))
puts "is_sorted: #{array.sort == sorted_array}"
