def max_sequence(arr)
  arr.length > 0 ? [(1..arr.length).map { |size| max_arr_of_size_n(arr, size) }.max, 0].max : 0
end

def max_arr_of_size_n(a, n)
  (0..(a.length - n)).map { |x| a[x, n].sum }.max
end
