module Baseball
  class Second
    def initialize(player, uniform)
      @player = player
      @uniform = uniform
    end
  end
end

module Clock
  class Second
    def initialize(digits)
      @digits = digits
    end
  end
end

Baseball::Second.new('Alice', 13)
Clock::Second.new(12)
