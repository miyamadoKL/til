class Tree
  class Node
    def initialize key, data
      @key = key
      @data = data
      @left = nil
      @right = nil
    end
    attr_accessor :key, :data, :left, :right
  end

  def initialize
    @root = nil
  end
end
