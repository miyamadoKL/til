def selection_sort array
  ary = array.dup
  (0...ary.length).each{|ix|
    min_num = ary[ix]
    min_pos = ix
    ((ix+1)...ary.length).each{|iy|
      if min_num > ary[iy]
        min_num = ary[iy]
        min_pos = iy
      end
    }

    ary[ix], ary[min_pos] = min_num, ary[ix]
  }

  ary
end

def selection_sort_ruby ary
  ary_with_idx = ary.zip(0...ary.length)
  (0...ary.length).each{|ix|
    min = ary_with_idx[ix..-1].min_by{|num, ix| num}
    ary_with_idx[ix][0], ary_with_idx[min[1]][0] = min[0], ary_with_idx[ix][0] 
  }

  ary_with_idx.map { |num, ix| num }
end

require 'pp'

array = (0..100).to_a.sample(20)
pp array

# selection_sort
pp(sorted_array = selection_sort(array))
puts "selection_sort_is_sorted: #{array.sort == sorted_array}"

# selection_sort_ruby
pp(sorted_array2 = selection_sort_ruby(array))
puts "selection_sort_is_sorted: #{array.sort == sorted_array2}"
