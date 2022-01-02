__config() -> {
    'stay_loaded' -> 'true'
};

__command()-> (scoreboard('gamemode', player(), 1);return());

creative() -> (modify(player(), 'gamemode', 'creative');return());
survival() -> (modify(player(), 'gamemode', 'survival');return());
spectator() -> (modify(player(), 'gamemode', 'spectator');return());