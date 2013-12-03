# Given:
# 5 songs of the following lengths in seconds
# 223,215,378,324,254

# Goals:
# Assign the length set to variables
# Calculate the Total Length of the Playlists
# Express the Length in Minutes
# Average Song Length in Minutes

song_times = [223,215,378,324,254]

def song_length (arry)
  total_length = 0
  arry.each do |x|
    total_length += x
  end

  minutes = total_length / 60.0
  puts "The total length is #{minutes.round(2)} minutes."
  
  avg = minutes / 5.0
  puts "The average song length is #{avg.round(2)} minutes."
end
    
song_length(song_times)