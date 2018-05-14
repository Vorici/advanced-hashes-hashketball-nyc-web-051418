def game_hash
   {
    home: {
      team_name: "Brooklyn Nets",
      colors: ["Black", "White"],
      players: {
        "Alan Anderson" => {
          number: 0,
          shoe: 16,
          points: 22,
          rebounds: 12,
          assists: 12,
          steals: 3,
          blocks: 1,
          slam_dunks: 1
        },
        "Reggie Evans" => {
          number: 30,
          shoe: 14,
          points: 12,
          rebounds: 12,
          assists: 12,
          steals: 12,
          blocks: 12,
          slam_dunks: 7
        },
        "Brook Lopez" => {
          number: 11,
          shoe: 17,
          points: 17,
          rebounds: 19,
          assists: 10,
          steals: 3,
          blocks: 1,
          slam_dunks: 15
        },
        "Mason Plumlee" => {
          number: 1,
          shoe: 19,
          points: 26,
          rebounds: 12,
          assists: 6,
          steals: 3,
          blocks: 8,
          slam_dunks: 5
        },
        "Jason Terry" => {
          number: 31,
          shoe: 15,
          points: 19,
          rebounds: 2,
          assists: 2,
          steals: 4,
          blocks: 11,
          slam_dunks: 1
        }
      }
    },
    away: {
      team_name: "Charlotte Hornets",
      colors: ["Turquoise", "Purple"],
      players: {
        "Jeff Adrien" => {
          number: 4,
          shoe: 18,
          points: 10,
          rebounds: 1,
          assists: 1,
          steals: 2,
          blocks: 7,
          slam_dunks: 2
        },
        "Bismak Biyombo" => {
          number: 0,
          shoe: 16,
          points: 12,
          rebounds: 4,
          assists: 7,
          steals: 7,
          blocks: 15,
          slam_dunks: 10
        },
        "DeSagna Diop" => {
          number: 2,
          shoe: 14,
          points: 24,
          rebounds: 12,
          assists: 12,
          steals: 4,
          blocks: 5,
          slam_dunks: 5
        },
        "Ben Gordon" => {
          number: 8,
          shoe: 15,
          points: 33,
          rebounds: 3,
          assists: 2,
          steals: 1,
          blocks: 1,
          slam_dunks: 0
        },
        "Brendan Haywood" => {
          number: 33,
          shoe: 15,
          points: 6,
          rebounds: 12,
          assists: 12,
          steals: 22,
          blocks: 5,
          slam_dunks: 12
        }
      }
    }
  }
 end


def num_points_scored(player_name)
    merged_player_names = game_hash[:home][:players].merge(game_hash[:away][:players])
    player = merged_player_names.fetch(player_name)
    player.fetch(:points)
end

def shoe_size(player_name)
    merged_player_names = game_hash[:home][:players].merge(game_hash[:away][:players])
    player = merged_player_names.fetch(player_name)
    player.fetch(:shoe)
end

def team_colors(team_name)
  # returns array object of hash values
  team_colors = game_hash.values 
  
  #enum through array with .find and .fetch data from hash values
  color = team_colors.find {|team| team.fetch(:team_name) == team_name} 
  color.fetch(:colors)
end

def team_names
  team_names = game_hash.values
  #map creates new array containing values in block
  team_names.map{|team| team.fetch(:team_name)}
end

def player_numbers(team_name)
  player_numbers = game_hash.values
  numbers = player_numbers.find {|team| team.fetch(:team_name) == team_name}
  numbers[:players].map{ |player_name, stats| stats[:number] }
  
end

def player_stats(player_name)
  merged_player_names = game_hash[:home][:players].merge(game_hash[:away][:players])
  player_stats = merged_player_names.fetch(player_name)
end

def big_shoe_rebounds
all_players = game_hash[:home][:players].merge(game_hash[:away][:players])
big_shoe_player_stats = all_players.max_by{|player, stats| stats.fetch(:shoe)}[1]
big_shoe_player_stats[:rebounds]
end
 




