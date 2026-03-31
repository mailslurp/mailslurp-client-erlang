-module(maislurp-client-erlang_available_phone_numbers_result).

-export([encode/1]).

-export_type([maislurp-client-erlang_available_phone_numbers_result/0]).

-type maislurp-client-erlang_available_phone_numbers_result() ::
    #{ 'count' := integer(),
       'items' := list(),
       'warning' => binary()
     }.

encode(#{ 'count' := Count,
          'items' := Items,
          'warning' := Warning
        }) ->
    #{ 'count' => Count,
       'items' => Items,
       'warning' => Warning
     }.
