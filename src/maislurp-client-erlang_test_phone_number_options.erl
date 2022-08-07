-module(maislurp-client-erlang_test_phone_number_options).

-export([encode/1]).

-export_type([maislurp-client-erlang_test_phone_number_options/0]).

-type maislurp-client-erlang_test_phone_number_options() ::
    #{ 'message' := binary()
     }.

encode(#{ 'message' := Message
        }) ->
    #{ 'message' => Message
     }.
