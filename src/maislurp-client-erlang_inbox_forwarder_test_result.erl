-module(maislurp-client-erlang_inbox_forwarder_test_result).

-export([encode/1]).

-export_type([maislurp-client-erlang_inbox_forwarder_test_result/0]).

-type maislurp-client-erlang_inbox_forwarder_test_result() ::
    #{ 'matches' := maps:map(),
       'doesMatch' := boolean()
     }.

encode(#{ 'matches' := Matches,
          'doesMatch' := DoesMatch
        }) ->
    #{ 'matches' => Matches,
       'doesMatch' => DoesMatch
     }.
