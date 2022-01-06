-module(maislurp-client-erlang_inbox_ruleset_test_options).

-export([encode/1]).

-export_type([maislurp-client-erlang_inbox_ruleset_test_options/0]).

-type maislurp-client-erlang_inbox_ruleset_test_options() ::
    #{ 'testTarget' => binary()
     }.

encode(#{ 'testTarget' := TestTarget
        }) ->
    #{ 'testTarget' => TestTarget
     }.
