adjacent(north,east).
adjacent(east,north).

adjacent(south,east).
adjacent(east,south).

adjacent(north,west).
adjacent(west,north).

adjacent(west,east).
adjacent(east,west).

opposite(north, south).
opposite(south, north).

opposite(west, east).
opposite(east, west).

lounge(FD, LW, BD):-opposite(LW, FD), adjacent(BD, FD).
bedroom(BD, BW):-adjacent(BD, BW), BW = east.
suite(FD, LW, BD, BW):-lounge(FD, LW, BD), bedroom(BD, BW).