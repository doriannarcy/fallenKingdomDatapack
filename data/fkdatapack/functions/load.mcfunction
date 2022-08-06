tellraw @a {"text": "FKDatapack loaded", "color": "#00CC00"}

# Score counters
scoreboard objectives add totalScore dummy
scoreboard objectives add mineScore dummy
scoreboard objectives add killScore dummy

# Teams for players
team add team1 "E1"
team modify team1 color blue

team add team2 "E2"
team modify team2 color red

# Teams for display
team add displayTeam
team modify displayTeam color yellow
team join displayTeam total:
team join displayTeam kills:
team join displayTeam minage:

# Sidebar objectives
scoreboard objectives add team1Sidebar dummy
scoreboard objectives setdisplay sidebar.team.blue team1Sidebar
scoreboard objectives modify team1Sidebar displayname {"text": "Equipe 1", "color": "blue", "bold": true}

scoreboard objectives add team2Sidebar dummy
scoreboard objectives setdisplay sidebar.team.red team2Sidebar
scoreboard objectives modify team2Sidebar displayname {"text": "Equipe 2", "color": "red", "bold": true}

# Breaking minerals
    # Gold
    scoreboard objectives add _mineGold mined:gold_ore
    scoreboard objectives add _mineGold2 mined:deepslate_gold_ore

    # Diamond
    scoreboard objectives add _mineDiamond mined:diamond_ore
    scoreboard objectives add _mineDiamond2 mined:deepslate_diamond_ore

    # Emerald
    scoreboard objectives add _mineEmerald mined:emerald_ore
    scoreboard objectives add _mineEmerald2 mined:deepslate_emerald_ore