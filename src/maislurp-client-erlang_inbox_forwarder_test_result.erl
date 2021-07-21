-module(maislurp-client-erlang_inbox_forwarder_test_result).

-export([encode/1]).

-export_type([maislurp-client-erlang_inbox_forwarder_test_result/0]).

-type maislurp-client-erlang_inbox_forwarder_test_result() ::
    #{ 'doesMatch' := boolean(),
       'matches' := maps:map()
     }.

encode(#{ 'doesMatch' := DoesMatch,
          'matches' := Matches
        }) ->
    #{ 'doesMatch' => DoesMatch,
       'matches' => Matches
     }.
