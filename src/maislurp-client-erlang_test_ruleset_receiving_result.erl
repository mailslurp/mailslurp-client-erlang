-module(maislurp-client-erlang_test_ruleset_receiving_result).

-export([encode/1]).

-export_type([maislurp-client-erlang_test_ruleset_receiving_result/0]).

-type maislurp-client-erlang_test_ruleset_receiving_result() ::
    #{ 'canReceive' := boolean()
     }.

encode(#{ 'canReceive' := CanReceive
        }) ->
    #{ 'canReceive' => CanReceive
     }.
