require "test/unit/assertions"
include Test::Unit::Assertions

def max_sequence(arr)
  arr.length > 0 ? [(1..arr.length).map { |size| max_arr_of_size_n(arr, size) }.max, 0].max : 0
end

def max_arr_of_size_n(a, n)
  (0..(a.length - n)).map { |x| a[x, n].sum }.max
end

assert_equal(max_sequence([]), 0)
assert_equal(max_sequence([-2, 1, -3, 4, -1, 2, 1, -5, 4]), 6)
assert_equal(max_sequence([11]), 11)
assert_equal(max_sequence([-32]), 0)
assert_equal(max_sequence([-2, 1, -7, 4, -10, 2, 1, 5, 4]), 12)
