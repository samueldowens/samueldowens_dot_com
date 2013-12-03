songs = [
  "The Phoenix - 1901",
  "Tokyo Police Club - Wait Up",
  "Sufjan Stevens - Too Much",
  "The Naked and the Famous - Young Blood",
  "(Far From) Home - Tiga",
  "The Cults - Abducted",
  "The Phoenix - Consolation Prizes"
]

command = ""

loop do
puts "Please enter a command."
command = gets.downcase.strip

  case command
  when "play"
    puts "you typed play"
  when "exit"
    puts "Goodbye"
    break
  when "list"
   list(songs)
  when "help"
    puts "I support help, play, exit and list"

  end
end

def lists(songs)
  songs.each_with_index do |song, i|
     puts "#{i+1}. #{song}"
  end
end