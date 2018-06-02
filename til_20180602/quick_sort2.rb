class Array
  def qsort2
    return self if self.size < 2
    pivot = self.shift
    self.partition { |num| num < pivot }.map(&:qsort2).insert(1, pivot).flatten
  end
end

require 'pp'

array = (0..100).to_a.sample(20)
pp array
pp(sorted_array = array.qsort2)
puts "is_sorted: #{array.sort == sorted_array}"
