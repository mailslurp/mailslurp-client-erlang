-module(maislurp-client-erlang_inbox_automation_match_options).

-export([encode/1]).

-export_type([maislurp-client-erlang_inbox_automation_match_options/0]).

-type maislurp-client-erlang_inbox_automation_match_options() ::
    #{ 'operator' := binary(),
       'matches' => list(),
       'groups' => list()
     }.

encode(#{ 'operator' := Operator,
          'matches' := Matches,
          'groups' := Groups
        }) ->
    #{ 'operator' => Operator,
       'matches' => Matches,
       'groups' => Groups
     }.
