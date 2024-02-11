# typed: true

module Type
  module Test

    class Vector
      sig { returns(Integer) }
      attr_accessor :x
      sig { returns(Integer) }
      attr_accessor :y

      sig {params(x: Integer, y: Integer).void}
      def initialize(x, y); end

      sig {params(other_vec: Type::Test::Vector).returns(T::Boolean)}
      def ==(other_vec); end

      sig {params(other_vec: Type::Test::Vector).returns(Type::Test::Vector)}
      def +(other_vec); end

      sig {returns(String)}
      def xy; end
    end
  end
end
