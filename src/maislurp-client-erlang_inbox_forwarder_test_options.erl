-module(maislurp-client-erlang_inbox_forwarder_test_options).

-export([encode/1]).

-export_type([maislurp-client-erlang_inbox_forwarder_test_options/0]).

-type maislurp-client-erlang_inbox_forwarder_test_options() ::
    #{ 'testValue' => binary()
     }.

encode(#{ 'testValue' := TestValue
        }) ->
    #{ 'testValue' => TestValue
     }.
