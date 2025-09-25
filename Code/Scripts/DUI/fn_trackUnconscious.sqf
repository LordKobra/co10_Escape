while {true} do {
    sleep 5;
    private _trackingTargets = [];
    {
        private _isUnconscious =_x getVariable ["AT_Revive_isUnconscious", false]
                                OR 	_x getVariable ["ACE_Revive_isUnconscious", false];

        if _isUnconscious then {
            _trackingTargets pushBack _x;
        };
    
    } forEach allPlayers;

    missionNamespace setVariable["diwako_dui_special_track",_trackingTargets, true];
};