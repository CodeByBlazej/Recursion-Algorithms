# Define a recursive function that returns true if a 
# string is a palindrome and false otherwise.
def palindrome(str)
  if str.length == 1 || str.length == 0
    true
  else
    if str[0] == str[-1]
      palindrome(str[1..-2])
    else
      false
    end
  end
end

puts palindrome('civic')
