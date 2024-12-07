def fib_recursive(digits, num1=0, num2=1)
  return if digits == 0
  puts num1
  fib_recursive((digits - 1), num2, (num1 + num2))
end

def merge(array_one, array_two)
  sorted = []
  
  until array_one.empty? || array_two.empty?
    if array_one.first < array_two.first
      sorted << array_one.shift
    else
      sorted << array_two.shift
    end
  end

  sorted.concat(array_one).concat(array_two)
end

def merge_sort(array)
  return array if array.length == 1 # Base Case: Return the array if it's 'sorted' (length of one)
  array_left = merge_sort(array[0...(array.length / 2).floor])
  array_right = merge_sort(array[(array.length / 2).floor..-1])

  merge(array_left, array_right)
end

test1 = [3, 2, 1, 13, 8, 5, 0, 1]
test2 = [105, 79, 100, 110]
p merge_sort(test1)
p merge_sort(test2)