-module(maislurp-client-erlang_scoped_email_thread).

-export([encode/1]).

-export_type([maislurp-client-erlang_scoped_email_thread/0]).

-type maislurp-client-erlang_scoped_email_thread() ::
    #{ 'thread' := maislurp-client-erlang_email_thread_dto:maislurp-client-erlang_email_thread_dto(),
       'items' := list()
     }.

encode(#{ 'thread' := Thread,
          'items' := Items
        }) ->
    #{ 'thread' => Thread,
       'items' => Items
     }.
