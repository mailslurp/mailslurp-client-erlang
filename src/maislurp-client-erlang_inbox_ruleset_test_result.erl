-module(maislurp-client-erlang_inbox_ruleset_test_result).

-export([encode/1]).

-export_type([maislurp-client-erlang_inbox_ruleset_test_result/0]).

-type maislurp-client-erlang_inbox_ruleset_test_result() ::
    #{ 'rulesetMatches' => maps:map(),
       'matches' => boolean()
     }.

encode(#{ 'rulesetMatches' := RulesetMatches,
          'matches' := Matches
        }) ->
    #{ 'rulesetMatches' => RulesetMatches,
       'matches' => Matches
     }.
