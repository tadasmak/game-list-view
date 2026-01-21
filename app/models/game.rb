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

    enum region: {
        global: 0,
        europe: 1,
        asia: 2,
        africa: 3,
        north_america: 4,
        south_america: 5,
        australia: 6
    }
end
