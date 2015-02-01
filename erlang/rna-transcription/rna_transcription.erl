-module(rna_transcription).
-export([to_rna/1]).

to_rna(Dna) -> lists:map(fun complement/1, Dna).

complement($G) -> $C;
complement($C) -> $G;
complement($T) -> $A;
complement($A) -> $U.
