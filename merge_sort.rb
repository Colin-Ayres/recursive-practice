# Frozen_string_literal: true

# Sorts by breaking it into two halves and comparing recursively
def mergesort(initial_array)
  if initial_array.length > 1
    left_array = mergesort(initial_array[0..(initial_array.length / 2 - 1)]) # => Break array into its left half
    right_array = mergesort(initial_array[(initial_array.length / 2)..initial_array.length]) # => Break array into its right half 
    merge(left_array, right_array) # Recursion continues to divide array until it contains only one element. Figure out which is larger and merge
  else
    initial_array # Return initial array in trivial case
  end
end

# Evaluate which element is larger and add it to the new array
def merge(left_array, right_array)
  sorted_array = []
  while !left_array.empty? && !right_array.empty?
    if left_array[0] < right_array[0]
      sorted_array.push(left_array.shift)
    else
      sorted_array.push(right_array.shift)
    end
  end
  sorted_array.concat(left_array).concat(right_array)
end

# Test cases:
# p mergesort([2, 5, 8, 9, 1]) # => [1, 2, 5, 8, 9]
# p mergesort([3, 6, 4, 7, 1, 1]) # => [1, 1, 3, 4, 6, 7]
# p mergesort([13]) # => [13]
