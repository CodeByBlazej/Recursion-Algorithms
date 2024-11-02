# Define a recursive function that flattens an array.
# The method should convert [[1, 2], [3, 4]] to [1, 2, 3, 4]
# and [[1, [8, 9]], [3, 4]] to [1, 8, 9, 3, 4].
def flatten(arr, result = [])
  arr.each do |el|
    if el.kind_of?(Array)
      flatten(el, result)
    else
      result << el
    end
  end
  result
end

p flatten([[1, 2], [3, 4]])
p flatten ([[1, [8, 9]], [3, 4]])