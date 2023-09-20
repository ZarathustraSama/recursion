def merge_sort(arr)
  return arr if arr.length < 2

  left_side = merge_sort(arr[0..((arr.length - 1) / 2)])
  right_side = merge_sort(arr[((arr.length - 1) / 2 + 1)..(arr.length - 1)])

  merged_arr = []
  until left_side.empty? || right_side.empty?
    if left_side.first <= right_side.first
      merged_arr << left_side.shift
    else
      merged_arr << right_side.shift
    end
  end
  merged_arr.concat(left_side, right_side)
end

arr = [6, 5, 9, 3, 1, 7, 4, 2, 8, 0, 7]

p merge_sort(arr)

