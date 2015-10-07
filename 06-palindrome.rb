# Write a method that takes a string and returns true if it is a
# palindrome. A palindrome is a string that is the same whether written
# backward or forward. Assume that there are no spaces; only lowercase
# letters will be given.
#
# Difficulty: easy.

def palindrome?(string)

  middle = (string.length/2).floor
  first_half = []
  second_half = []

  for i in 0..middle-1
    first_half.push(string[i])
  end

  for i in middle+1..string.length-1
    second_half.push(string[i])
  end

  if first_half == second_half.reverse
    return true
  else
    return false
  end

end

# These are tests to check that your code is working. After writing
# your solution, they should all print true.

puts('palindrome?("abc") == false: ' + (palindrome?('abc') == false).to_s)
puts('palindrome?("abcba") == true: ' + (palindrome?('abcba') == true).to_s)
puts('palindrome?("z") == true: ' + (palindrome?('z') == true).to_s)