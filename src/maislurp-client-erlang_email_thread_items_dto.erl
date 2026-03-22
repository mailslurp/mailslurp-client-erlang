-module(maislurp-client-erlang_email_thread_items_dto).

-export([encode/1]).

-export_type([maislurp-client-erlang_email_thread_items_dto/0]).

-type maislurp-client-erlang_email_thread_items_dto() ::
    #{ 'items' := list()
     }.

encode(#{ 'items' := Items
        }) ->
    #{ 'items' => Items
     }.
