tweet1 = "Hey guys, can anyone teach me how to be cool? I really want to be the best at everything, you know what I mean? Tweeting is super fun you guys!!!!"
tweet2 = "OMG you guys, you won't believe how sweet my kitten is. My kitten is like super cuddly and too cute to be believed right?", "I'm running out of example tweets for you guys, which is weird, because I'm a writer and this is just writing and I tweet all day. For real, you guys. For real."
tweet3 = "GUISEEEEE this is so fun! I'm tweeting for you guys and this tweet is SOOOO long it's gonna be way more than you would think twitter can handle, so shorten it up you know what I mean? I just can never tell how long to keep typing!"

def shortener(tweet)
  tweet.join(" ")
  array = tweet.split(" ")
  i = 0

  array.each do |word|
    
  if word.downcase == "to"
    array[i] = "2"
  elsif word.downcase == "too"
    array[i] = "2"
  elsif word.downcase == "two"
    array[i] = "2"
  elsif word.downcase == "four"
    array[i] = "4"
  elsif word.downcase == "for"
    array[i] = "4"
  elsif word.downcase == "be"
    array[i] = "b"
  elsif word.downcase == "you"
    array[i] = "u"
  elsif word.downcase == "at"
    array[i] = "@"
  elsif word.downcase == "and"
    array[i] = "&"
  end

  i += 1
  end

  puts array.join(" ")
  
end

def run (tweet1, tweet2, tweet3)
  shortener(tweet1)
  shortener(tweet2)
  shortener(tweet3)
end

run(tweet1,tweet2,tweet3)