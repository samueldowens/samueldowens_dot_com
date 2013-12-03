#Let's go back to the exercise where we determined what is and isn't a vowel. With ruby, there's always more than #one way to do something and get the same result.
#
#Assuming vowels a,e,i,o,u:
#
 #   Write a method that returns whether a given letter is a vowel, using if and elsif
  #  Write a method that returns whether a given letter is a vowel, using case
   # Write a method that returns whether a given letter is a vowel, using if with no else, all on a single line
    #Write a method that returns whether a given letter is a vowel without using if or case while all on a single #line
   # Write a method that returns whether a given letter is a vowel without checking equality, or the use of if, #using the array of vowels
    #Write a method that will evaluate a string and return the first vowel found in the string, if any
    #Write a method that will evaluate a string and return the ordinal position (index) of the string where the #first vowel is found, if any

#hint: remember that every line of ruby code has a return value, and that a method will return the result of the last operation

def vowel? |letter|
  if letter == "a"
    true
  elsif letter == "e"
    true
  elsif letter == "i"
    true
  elsif letter == "o"
    true
  elsif letter == "u"
    true
  else 
    false
  end
end

####################################

case letter
  when "a, e, i, o, u"
    true
  else
    false
  end
end


####################################



true if letter == "a" || letter == "e" || letter == "i" || letter == "o" || letter == "u"

####################################

letter.match(/a|e|i|o|u|y/)

####################################

vowels = ["a","e","i","o","u"]

vowels.include?(letter)

####################################

string.match(/a|e|i|o|u|y/)

####################################

string.index(/a|e|i|o|u|y/)

####################################
