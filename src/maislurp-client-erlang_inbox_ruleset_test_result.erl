-module(maislurp-client-erlang_inbox_ruleset_test_result).

-export([encode/1]).

-export_type([maislurp-client-erlang_inbox_ruleset_test_result/0]).

-type maislurp-client-erlang_inbox_ruleset_test_result() ::
    #{ 'matches' := boolean(),
       'rulesetMatches' => maps:map()
     }.

encode(#{ 'matches' := Matches,
          'rulesetMatches' := RulesetMatches
        }) ->
    #{ 'matches' => Matches,
       'rulesetMatches' => RulesetMatches
     }.
