#Jukebox Program
  
#Greeting and setup for the program.
puts "Hello and welcome to the jukebox."
puts "Please let me know your name..."
name = gets.chomp
puts ""
puts "Okay #{name.capitalize}, let me tell you how this works."
puts ""
puts "You can type any of the following commands..."
puts ""
puts "----------------------------------------------------------------------"
puts "'Help' in case you forget how the program works, this will remind you."
puts "'Play' where you will be able to play a song."
puts "'List' this will show you the list of available songs."
puts "'Exit' to exit the program."
puts "----------------------------------------------------------------------"

#Actual main function that other functions recur to in order to have the program work.
def jukebox

  songs = [
  "1. The Phoenix - 1901",
  "2. Tokyo Police Club - Wait Up",
  "3. Sufjan Stevens - Too Much",
  "4. The Naked and the Famous - Young Blood",
  "5. (Far From) Home - Tiga",
  "6. The Cults - Abducted",
  "7. The Phoenix - Consolation Prizes"
  ]
    
  puts "What would you like to do? "
  
  command = gets.downcase.chomp

  case command
    when "help"
      helper
    when "play"
      player(songs)
    when "list"
      lister(songs)
    when "exit"
      exiter
    else 
      puts "That was an invalid command"
      jukebox
  end
end

#This method exits the program by not recurring to jukebox.
def exiter
  puts ""
  puts "*****************************************************************************"
  puts "I can't believe you're leaving, I GUESS MY JUKES WEREN'T GOOD ENOUGH FOR YOU!"
  puts "*****************************************************************************"
  puts ""
end

#This method lists the songs and recurs back into jukebox.
def lister(songs)
  puts ""
  puts "Here are the lists of songs and artists contained in the jukebox..."
  puts ""
  puts "------------------------------------------"
  puts songs
  puts "------------------------------------------"
  puts ""
  puts "Welcome back to the Jukebox... type help, play, list or exit..."

  jukebox
end

#This method lists the possible commands and then recurs back into jukebox.
def helper
  puts ""
  puts "----------------------------------------------------------------------"
  puts "You can type any of the following commands..."
  puts "'Help' in case you forget how the program works, this will remind you."
  puts "'Play' where you will be able to play a song."
  puts "'List' this will show you the list of available songs."
  puts "'Exit' to exit the program."
  puts "----------------------------------------------------------------------"
  puts ""
  puts "Welcome back to the Jukebox... type help, play, list or exit..."

  jukebox
end

#This recur 
def player(songs)
  puts ""
  puts "------------------------------------------"
  puts songs
  puts "------------------------------------------"
  puts ""

  puts "Please type the song name or number you want me to play."
  track = gets.downcase.chomp

  case track
  when "1901", "1"
    puts ""
    puts "***** Playing 1901 by The Phoenix. *****"
    puts ""
    puts "Wasn't that a great tune? We're not just juking you around!"
    puts ""
    puts "Welcome back to the Jukebox... type help, play, list or exit..."
  when "wait up", "2"
    puts ""
    puts "***** Playing Wait Up by Tokyo Police Club. *****"
    puts ""
    puts "Wow, your taste in music is a total juke."
    puts ""
    puts "Welcome back to the Jukebox... type help, play, list or exit..."
  when "too much", "3"
    puts ""
    puts "***** Playing Too Much by Sufjan Stevens *****"
    puts ""
    puts "Are you tired of my jukes yet?"
    puts ""
    puts "Welcome back to the Jukebox... type help, play, list or exit..."
  when "young blood", "4"
    puts ""
    puts "***** Playing Young Blood by The Naked and Famous *****"
    puts ""
    puts "Milk was a bad choice!"
    puts ""
    puts "Welcome back to the Jukebox... type help, play, list or exit..."
  when "tiga", "5"
    puts ""
    puts "***** Playing Tiga by (Far From) Home *****"
    puts ""
    puts "Yawn, I hope you didn't pay to hear that."
    puts ""
    puts "Welcome back to the Jukebox... type help, play, list or exit..."
  when "abducted", "6"
    puts ""
    puts "***** Playing Abducted by The Cults *****"
    puts ""
    puts "I'm fresh out of good jukes, so I'm going to use the same old pun."
    puts ""
    puts "Welcome back to the Jukebox... type help, play, list or exit..."
  when "consolation prizes", "7"
    puts ""
    puts "***** Playing Consolation Prizes by The Phoenix *****"
    puts ""
    puts "Another Phoenix song? I need some more variety!"
    puts ""
    puts "Welcome back to the Jukebox... type help, play, list or exit..."
  else 
    puts ""
    puts "That was an invalid input, try again."
    puts ""
    puts "Welcome back to the Jukebox... type help, play, list or exit..."
  end

  jukebox
end


jukebox
