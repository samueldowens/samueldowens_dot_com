array = ["apple", "banana", "orange"]

array.sort_by{|word| word.length} #word length

array.sort_by{|word| word.scan(/a|e|i|o|u/).size} #how many vowels

array.sort_by{|word| word} #alphabetically
