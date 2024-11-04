# 1st solution with until loop
def merge_sort(arr)
  if arr.size <= 1
    arr
  else
    left = merge_sort(arr[0...arr.size / 2])
    right = merge_sort(arr[arr.size / 2..-1])
    result = []

    left.first <= right.first ? result << left.shift : result << right.shift until left.size < 1 || right.size < 1
    result  + left + right
  end
end

p merge_sort([3, 2, 1, 13, 8, 5, 0, 1])
p merge_sort([105, 79, 100, 110])

# 2nd solution without loop
def merge_sort2(arr)
  if arr.size <= 1
    arr
  else
    left = merge_sort2(arr[0...arr.size / 2])
    right = merge_sort2(arr[arr.size / 2..-1])

    if left.empty?
      return right
    elsif right.empty?
      return left
    end

    if left[0] <= right[0]
      return [left[0]] + merge_sort2(left[1..-1] + right)
    else
      return [right[0]] + merge_sort2(left + right[1..-1])
    end
  end
end

p merge_sort2([3, 2, 1, 13, 8, 5, 0, 1])
p merge_sort2([105, 79, 100, 110])