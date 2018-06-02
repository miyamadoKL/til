def merge_sort ary
  return ary if ary.length == 1
  return [ary.min, ary.max] if ary.length == 2

  half = ary.length / 2

  left = merge_sort ary[0..(half - 1)]
  right = merge_sort ary[half..-1]

  lv = left.shift
  rv = right.shift
  ary.length.times.map {
    if lv < rv
      lv.tap { lv = left.shift || right[-1] || rv }
    else
      rv.tap { rv = right.shift || left[-1] || lv }
    end
  }
end

require 'pp'

array = (0..100).to_a.sample(20)
pp array
pp(sorted_array = merge_sort(array))
puts "is_sorted: #{array.sort == sorted_array}"
