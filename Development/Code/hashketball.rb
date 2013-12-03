# overall hash
# 2 subhashes, team 1 and team 2
# each team has 3 subhashes name, colors, players
# name = just pointer
# colors = array
# players = array

# player has the following hashes in an array: name, number, shoe_size, points, rebounds, assists, steals, blocks, slam_dunks

hashketball = 
{
  :team1 => 
  {
    :name => "gangly elephants", 
    :colors => ["grey", "white"], 
    :players => 
      {
      "Michael Jordan" => 
        {
          :number => 1,
          :shoe_size => 10,
          :points => 50,
          :rebounds => 5,
          :assists => 5,
          :steals => 5,
          :blocks => 154,
          :slam_dunks => 26,
        },
        "Lebron James" => 
        {
          :number => 2,
          :shoe_size => 11,
          :points => 51,
          :rebounds => 6,
          :assists => 6,
          :steals => 6,
          :blocks => 153,
          :slam_dunks => 25,
        },
        "Carmello Anthony" => 
        {
          :number => 3,
          :shoe_size => 12,
          :points => 52,
          :rebounds => 6,
          :assists => 6,
          :steals => 6,
          :blocks => 156,
          :slam_dunks => 31,
        },
        "Allen Iverson" => 
        {
          :number => 4,
          :shoe_size => 47,
          :points => 159,
          :rebounds => 5,
          :assists => 5,
          :steals => 3,
          :blocks => 153,
          :slam_dunks => 1,
        },
        "Shaq" => 
        {
          :number => 5,
          :shoe_size => 17,
          :points => 63,
          :rebounds => 1,
          :assists => 1,
          :steals => 1,
          :blocks => 1,
          :slam_dunks => 50
        }
      }
    
  },

:team2 => 
  {
    :name => "clearly defined widgets", 
    :colors => ["gold", "silver"], 
    :players => 
      {
      "Joe Smith" => 
        {
          :number => 6,
          :shoe_size => 9,
          :points => 2,
          :rebounds => 0,
          :assists => 0,
          :steals => 1,
          :blocks => 1,
          :slam_dunks => 1,
        },
        "Patrick Ewing" => 
        {
          :number => 7,
          :shoe_size => 16,
          :points => 15,
          :rebounds => 6,
          :assists => 6,
          :steals => 6,
          :blocks => 152,
          :slam_dunks => 24,
        },
        "John Stockton" => 
        {
          :number => 8,
          :shoe_size => 5,
          :points => 30,
          :rebounds => 0,
          :assists => 12,
          :steals => 5,
          :blocks =>0,
          :slam_dunks => 0,
        },
        "Dennis Rodman" => 
        {
          :number => 9,
          :shoe_size => 12,
          :points => 19,
          :rebounds => 4,
          :assists => 10,
          :steals => 14,
          :blocks => 7,
          :slam_dunks => 5,
        },
        "Scotty Pippin" => 
        {
          :number => 10,
          :shoe_size => 17,
          :points => 63,
          :rebounds => 1,
          :assists => 1,
          :steals => 1,
          :blocks => 1,
          :slam_dunks => 50,
        }
      }
    
  }
}

def points(player, game)

  if game[:team1][:players].include?(player)
   game[:team1][:players][player][:points]

  elsif game[:team2][:players].include?(player)
    game[:team2][:players][player][:points]

  else
   "no such player"

  end
end

def shoe_size(player, game)

  if game[:team1][:players].include?(player)
    game[:team1][:players][player][:shoe_size]

  elsif game[:team2][:players].include?(player)
    game[:team2][:players][player][:shoe_size]

  else 
    "no such player"

  end
end

def colors(team, game)

  if game[:team1][:name].include?(team)
    game[:team1][:colors]

  elsif game[:team2][:name].include?(team)
    game[:team2][:colors]

  else
    "no such team"
  end
end

def team_names(game)
  game[:team1][:name]
  game[:team2][:name]
end

def player_numbers(team, game)

  if game[:team1][:name].include?(team)
    game[:team1][:players].each_key do |x|
       game[:team1][:players][x][:number]
    end

  elsif game[:team1][:name].include?(team)
    game[:team2][:players].each_key do |x|
      game[:team2][:players][x][:number]
    end

  else
    "there is no team named #{team}"

  end
end

def player_stats(player, game)

  if game[:team1][:players].include?(player)
    game[:team1][:players][player].each_key do |stat|
      puts "#{stat.to_s} #{game[:team1][:players][player][stat]}"
    end

  elsif game[:team2][:players].include?(player)
    game[:team2][:players][player].each_key do |stat|
      puts "#{stat.to_s} #{game[:team2][:players][player][stat]}"
    end

  else
    "there is no player named #{player}"

  end
end

def rebounds_by_shoes(game)
  bigfoot_name = ""
  bigfoot_size = 0
  
  game[:team1][:players].each_key do |name|
    if game[:team1][:players][name][:shoe_size] > bigfoot_size
      bigfoot_name = name
      bigfoot_size = game[:team1][:players][name][:shoe_size]
    end
  end
  
  game[:team2][:players].each_key do |name|
    if game[:team2][:players][name][:shoe_size] > bigfoot_size
      bigfoot_name = name
      bigfoot_size = game[:team2][:players][name][:shoe_size]
    end
  end
end

def best_score(game)
  best_score_name = ""
  best_score_value = 0
  
  game[:team1][:players].each_key do |name|
    if game[:team1][:players][name][:points] > best_score_value
      best_score_name = name
      best_score_value = game[:team1][:players][name][:points]
    end
  end
  
  game[:team2][:players].each_key do |name|
    if game[:team2][:players][name][:points] > best_score_value
      best_score_name = name
      best_score_value = game[:team2][:players][name][:points]
    end
  end
end

def best_team(game)
  team1_score = 0
  team2_score = 0
  
  game[:team1][:players].each_key do |name|
    team1_score += game[:team1][:players][name][:points]
  end
  
   game[:team2][:players].each_key do |name|
    team2_score += game[:team2][:players][name][:points]
  end
  
  if team1_score > team2_score
    :team1
  else
    :team2
  end
end


