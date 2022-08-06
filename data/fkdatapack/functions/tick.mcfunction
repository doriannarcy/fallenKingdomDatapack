# Break minerals
    # Gold
        # team1
            execute as @a[scores={_mineGold=1..}, team=team1] run scoreboard players add team1 mineScore 2
            execute as @a[scores={_mineGold2=1..}, team=team1] run scoreboard players add team1 mineScore 2

        # team2
            execute as @a[scores={_mineGold=1..}, team=team2] run scoreboard players add team2 mineScore 2
            execute as @a[scores={_mineGold2=1..}, team=team2] run scoreboard players add team2 mineScore 2

    # Diamond
        # team1
            execute as @a[scores={_mineDiamond=1..}, team=team1] run scoreboard players add team1 mineScore 5
            execute as @a[scores={_mineDiamond2=1..}, team=team1] run scoreboard players add team1 mineScore 5

        # team2
            execute as @a[scores={_mineDiamond=1..}, team=team2] run scoreboard players add team2 mineScore 5
            execute as @a[scores={_mineDiamond2=1..}, team=team2] run scoreboard players add team2 mineScore 5

    # Emerald
        # team1
            execute as @a[scores={_mineEmerald=1..}, team=team1] run scoreboard players add team1 mineScore 10
            execute as @a[scores={_mineEmerald2=1..}, team=team1] run scoreboard players add team1 mineScore 10

        # team2
            execute as @a[scores={_mineEmerald=1..}, team=team2] run scoreboard players add team2 mineScore 10
            execute as @a[scores={_mineEmerald2=1..}, team=team2] run scoreboard players add team2 mineScore 10

    # Reset mineCounters
        scoreboard players set @a[scores={_mineGold=1..}] _mineGold 0
        scoreboard players set @a[scores={_mineGold2=1..}] _mineGold2 0
        scoreboard players set @a[scores={_mineDiamond=1..}] _mineDiamond 0
        scoreboard players set @a[scores={_mineDiamond2=1..}] _mineDiamond2 0
        scoreboard players set @a[scores={_mineEmerald=1..}] _mineEmerald 0
        scoreboard players set @a[scores={_mineEmerald2=1..}] _mineEmerald2 0

# Kill people

# team1Sidebar
    scoreboard players set team1 totalScore 0
    scoreboard players set total: team1Sidebar 0
    scoreboard players set minage: team1Sidebar 0
    scoreboard players set kills: team1Sidebar 0

    scoreboard players operation minage: team1Sidebar += team1 mineScore
    scoreboard players operation kills: team1Sidebar += team1 killScore

    scoreboard players operation total: team1Sidebar += team1 mineScore
    scoreboard players operation total: team1Sidebar += team1 killScore

# team2Sidebar
    scoreboard players set team1 totalScore 0
    scoreboard players set total: team2Sidebar 0
    scoreboard players set minage: team2Sidebar 0
    scoreboard players set kills: team2Sidebar 0

    scoreboard players operation minage: team2Sidebar += team2 mineScore
    scoreboard players operation kills: team2Sidebar += team2 killScore

    scoreboard players operation total: team2Sidebar += team2 mineScore
    scoreboard players operation total: team2Sidebar += team2 killScore