# Write your code below game_hash
def game_hash
  {
    home: {
      team_name: "Brooklyn Nets",
      colors: ["Black", "White"],
      players: [
        {
          player_name: "Alan Anderson",
          number: 0,
          shoe: 16,
          points: 22,
          rebounds: 12,
          assists: 12,
          steals: 3,
          blocks: 1,
          slam_dunks: 1
        },
        {
          player_name: "Reggie Evans",
          number: 30,
          shoe: 14,
          points: 12,
          rebounds: 12,
          assists: 12,
          steals: 12,
          blocks: 12,
          slam_dunks: 7
        },
        {
          player_name: "Brook Lopez",
          number: 11,
          shoe: 17,
          points: 17,
          rebounds: 19,
          assists: 10,
          steals: 3,
          blocks: 1,
          slam_dunks: 15
        },
        {
          player_name: "Mason Plumlee",
          number: 1,
          shoe: 19,
          points: 26,
          rebounds: 11,
          assists: 6,
          steals: 3,
          blocks: 8,
          slam_dunks: 5
        },
        {
          player_name: "Jason Terry",
          number: 31,
          shoe: 15,
          points: 19,
          rebounds: 2,
          assists: 2,
          steals: 4,
          blocks: 11,
          slam_dunks: 1
        }
      ]
    },
    away: {
      team_name: "Charlotte Hornets",
      colors: ["Turquoise", "Purple"],
      players: [
        {
          player_name: "Jeff Adrien",
          number: 4,
          shoe: 18,
          points: 10,
          rebounds: 1,
          assists: 1,
          steals: 2,
          blocks: 7,
          slam_dunks: 2
        },
        {
          player_name: "Bismack Biyombo",
          number: 0,
          shoe: 16,
          points: 12,
          rebounds: 4,
          assists: 7,
          steals: 22,
          blocks: 15,
          slam_dunks: 10
        },
        {
          player_name: "DeSagna Diop",
          number: 2,
          shoe: 14,
          points: 24,
          rebounds: 12,
          assists: 12,
          steals: 4,
          blocks: 5,
          slam_dunks: 5
        },
        {
          player_name: "Ben Gordon",
          number: 8,
          shoe: 15,
          points: 33,
          rebounds: 3,
          assists: 2,
          steals: 1,
          blocks: 1,
          slam_dunks: 0
        },
        {
          player_name: "Kemba Walker",
          number: 33,
          shoe: 15,
          points: 6,
          rebounds: 12,
          assists: 12,
          steals: 7,
          blocks: 5,
          slam_dunks: 12
        }
      ]
    }
  }
end

# Write code here

def all_players ()
  home_players = game_hash[:home][:players]
  away_players = game_hash[:away][:players]
  combined_players = home_players.concat(away_players)
  return combined_players
end

def find_player (name)
  combined_players = all_players()
  player = combined_players.find { |player| player[:player_name] == name }
  return player
end

def num_points_scored (name)
  player = find_player(name)
  return player[:points]
end

def shoe_size (name)
  player = find_player(name)
  return player[:shoe]
end

def team_colors (team_name)
  game_hash.each do |attr_name, attr_value|
    if attr_value[:team_name] == team_name
      return attr_value[:colors]
    end
  end
end

def team_names ()
  home_team = game_hash[:home][:team_name]
  away_team = game_hash[:away][:team_name]
  team = [home_team, away_team]
  return team
end

def player_numbers (team_name)
  game_hash.each do |attr_name, attr_value|
    if attr_value[:team_name] == team_name
      number_array = []
      attr_value[:players].map do |player|
        number_array.push(player[:number])
      end
      return number_array
    end
  end
end

def player_stats (name)
  player = find_player(name)
  return player
end

def big_shoe_rebounds ()
  players = all_players()
  biggest_shoe_player = players[0]
  players.map do |player|
    if player[:shoe] > biggest_shoe_player[:shoe]
      biggest_shoe_player = player
    end
  end
  return biggest_shoe_player[:rebounds]
end