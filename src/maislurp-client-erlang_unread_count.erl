-module(maislurp-client-erlang_unread_count).

-export([encode/1]).

-export_type([maislurp-client-erlang_unread_count/0]).

-type maislurp-client-erlang_unread_count() ::
    #{ 'count' => integer()
     }.

encode(#{ 'count' := Count
        }) ->
    #{ 'count' => Count
     }.
