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

    def test_kata_replace
        assert_equal(get_kata(3), "mined")
        assert_equal(get_kata(6), "mined")
        assert_equal(get_kata(5), "minds")
        assert_equal(get_kata(10), "minds")
        assert_equal(get_kata(15), "mined minds")
        assert_equal(get_kata(30), "mined minds")

        assert_equal(get_kata(574), 574)
        assert_equal(get_kata(935), "minds")

        assert_equal(get_kata(-32), 0)
    end

    def test_array_building
        assert_not_nil(kata_array)
        assert_equal(kata_array[2], 2)
        assert_equal(kata_array[84], 84)
    end
end