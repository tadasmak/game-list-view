class Game < ApplicationRecord
    enum platform: {
        ea_games: 0,
        steam: 1,
        epic_games: 2
        xbox_live: 3,
        xbox_series: 4,
        playstation_4: 5,
        playstation_5: 6,
        nintendo_switch: 7,
        nintendo_switch_2: 8
    }
end
