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
        assert_not_nil(kata_array(1))
        assert_equal(kata_array(5)[2], 2)
        assert_equal(kata_array(100)[84], 84)
        assert_equal(kata_array(10).length, 10)
        assert_equal(kata_array(2837)[1324], 1324)
    end

    def test_array_kata
        testarray = kata_array(100)
        assert_not_nil(testarray)

        assert_false(array_replace_kata(1))

        newarray = array_replace_kata(testarray)
        assert_equal(newarray[1], 1)
        assert_equal(newarray[3], "mined")
        assert_equal(newarray[5], "minds")
        assert_equal(newarray[15], "mined minds")
        assert_equal(newarray[60], "mined minds")
        assert_equal(newarray[63], "mined")
        assert_equal(newarray[65], "minds")
        assert_equal(newarray[94], 94)
    end
end