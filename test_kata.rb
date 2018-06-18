require "test/unit"
require "./kata.rb"

class Test_kata < Test::Unit::TestCase
    def test_ensure
        assert_true(true)
    end

    def test_kata_func
        assert_equal(get_kata(1), 1)
        assert_equal(get_kata(2), 2)
    end
end