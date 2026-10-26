-module(maislurp-client-erlang_test_ruleset_sending_result).

-export([encode/1]).

-export_type([maislurp-client-erlang_test_ruleset_sending_result/0]).

-type maislurp-client-erlang_test_ruleset_sending_result() ::
    #{ 'canSend' := boolean()
     }.

encode(#{ 'canSend' := CanSend
        }) ->
    #{ 'canSend' => CanSend
     }.
