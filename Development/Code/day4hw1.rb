#You're hosting a conference and need to print badges for the speakers. Each badge should say: "Hello, my name is #_____."

#Write a method that will create and return this message, given a person's name.

#Now the list of speakers is finalized, and you can send the list of badges to the printer. Remember that you'll #need to give this list to the printer, so it should be accessible outside of the method.

#Modify your method so it can take a list of names as an argument and return a list of badge messages.

#Your conference speakers are: Edsger, Ada, Charles, Alan, Grace, Linus and Matz. How you scored these luminaries #is beyond me, but way to go!

#You just realized that you also need to give each speaker a room assignment. You have rooms 1-7. You'll need to #print this for the speakers, so make sure to return a list of room assignments in the form of: "Hello, _____! #You'll be assigned to room _____!"

#Write a method that assigns each speaker to a room, and make sure that each room only has one speaker. Return a #list of room assignments
#Now you have to tell the printer what to print. Create a method that will output the results of the badge method #and schedule method to the screen so the printer can do his thing.
#Write a method to run the rest of your program and print the results to the screen. No other method should print #to the screen.

names = ["Edsger", "Ada", "Charles", "Alan", "Grace", "Linus", "Matz"]

def nametags(array)
  badges = []

  array.each do |i|
    badges << "Hello, my name is #{i}."
  end
  
  badges
  
end
    
    name_array = nametags(names)

def rooms(array)
    roomassignment = []
    room = 0

    array.each do |i|
    room += 1
    roomassignment << "Hello #{i}! You'll be assigned to room #{room}."
    end

    roomassignment
end


room_array = rooms(names)


def printer(names)
  puts nametags(names)
  puts rooms(names)
end

def run(names)
  printer(names)
end

run(names)



