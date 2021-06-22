-module(maislurp-client-erlang_match_options).

-export([encode/1]).

-export_type([maislurp-client-erlang_match_options/0]).

-type maislurp-client-erlang_match_options() ::
    #{ 'conditions' => list(),
       'matches' => list()
     }.

encode(#{ 'conditions' := Conditions,
          'matches' := Matches
        }) ->
    #{ 'conditions' => Conditions,
       'matches' => Matches
     }.
