-module(maislurp-client-erlang_inbox_ids_result).

-export([encode/1]).

-export_type([maislurp-client-erlang_inbox_ids_result/0]).

-type maislurp-client-erlang_inbox_ids_result() ::
    #{ 'inboxIds' := list()
     }.

encode(#{ 'inboxIds' := InboxIds
        }) ->
    #{ 'inboxIds' => InboxIds
     }.
