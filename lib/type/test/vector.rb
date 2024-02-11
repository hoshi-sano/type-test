module Type
  module Test
    class Vector
      attr_accessor :x, :y

      def initialize(x, y)
        @x = x
        @y = y
      end

      def ==(other_vec)
        other_vec.x == @x && other_vec.y == @y
      end

      def +(other_vec)
        self.class.new(other_vec.x + @x, other_vec.y + @y)
      end

      def xy
        "[#{@x}, #{@y}]"
      end
    end
  end
end
