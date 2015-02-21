-module(leap).
-export([leap_year/1]).

leap_year(Year) ->
  evenly_divisible(Year, 4)
    andalso not evenly_divisible(Year, 100)
      orelse evenly_divisible(Year, 400).

evenly_divisible(X, Y) ->
  X rem Y == 0.
