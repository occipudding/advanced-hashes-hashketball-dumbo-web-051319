require 'pry'

def game_hash
  {
    :home => {
      :team_name => "Brooklyn Nets",
      :colors => ["Black", "White"],
      :players => {
        "Alan Anderson" => {
          :number => "0",
          :shoe => "16",
          :points => "22",
          :rebounds => "12",
          :assists => "12",
          :steals => "3",
          :blocks => "1",
          :slam_dunks => "1"
        },
        "Reggie Evans" => {
          :number => "30",
          :shoe => "14",
          :points => "12",
          :rebounds => "12",
          :assists => "12",
          :steals => "12",
          :blocks => "12",
          :slam_dunks => "7"
        }
      }
    },
    :away => {
      :team_name => "Charlotte Hornets",
      :colors => ["Turquoise", "Purple"],
      :players => {
        "Jeff Adrien" => {
          :number => "4",
          :shoe => "18",
          :points => "10",
          :rebounds => "1",
          :assists => "1",
          :steals => "2",
          :blocks => "7",
          :slam_dunks => "2"
        },
        "Bismack Biyombo" => {
          :number => "0",
          :shoe => "16",
          :points => "12",
          :rebounds => "4",
          :assists => "7",
          :steals => "7",
          :blocks => "15",
          :slam_dunks => "10"
        }
      }
    }
  }
end

def num_points_scored(name)
  (0..1).step(1) do |i|
    if game_hash[game_hash.keys[i]][:players].include?(name)
      return game_hash[game_hash.keys[i]][:players][name][:points].to_i
    end
  end
end

num_points_scored("Alan Anderson")