#Frozen_string_literal: true

# Returns array of fibonacci sequence
def fibs(index)
  output = [0, 1]
  i = 0
  (index - 1).times do 
    output.push(output[i]+ output[i+1])
    i += 1
  end
  output
end

# Returns the nth element of the fibonacci sequence (using recursion)
def fibs_recursive(index)
  return index if (0..1).include? index

  fibs_recursive(index - 1) + fibs_recursive(index - 2)
end

# Test case:
# puts fibs(10)
# puts fibs_recursive(10)