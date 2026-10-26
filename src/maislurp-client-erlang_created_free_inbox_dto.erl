-module(maislurp-client-erlang_created_free_inbox_dto).

-export([encode/1]).

-export_type([maislurp-client-erlang_created_free_inbox_dto/0]).

-type maislurp-client-erlang_created_free_inbox_dto() ::
    #{ 'token' := binary(),
       'inbox' := maislurp-client-erlang_free_inbox_dto:maislurp-client-erlang_free_inbox_dto()
     }.

encode(#{ 'token' := Token,
          'inbox' := Inbox
        }) ->
    #{ 'token' => Token,
       'inbox' => Inbox
     }.
