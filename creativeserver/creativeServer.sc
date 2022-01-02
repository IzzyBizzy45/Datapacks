__config()-> {
    'stay_loaded' -> 'true'
};

__on_player_connects(player)-> {
    print(player, format('br ------- Warning -------'));
    print(player, format('ci You have joined the Creative Server'));
    print(player, format('br ----------------------'));
    print(player, format('w \ '));
    print(player, format('w Change gamemodes using the \"/mode\" command'));
    scoreboard('gamemode', player, 1)
}