-module(maislurp-client-erlang_free_inbox_dto).

-export([encode/1]).

-export_type([maislurp-client-erlang_free_inbox_dto/0]).

-type maislurp-client-erlang_free_inbox_dto() ::
    #{ 'id' := binary(),
       'emailAddress' := binary(),
       'expiresAt' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'maxMessages' := integer(),
       'messages' := list()
     }.

encode(#{ 'id' := Id,
          'emailAddress' := EmailAddress,
          'expiresAt' := ExpiresAt,
          'maxMessages' := MaxMessages,
          'messages' := Messages
        }) ->
    #{ 'id' => Id,
       'emailAddress' => EmailAddress,
       'expiresAt' => ExpiresAt,
       'maxMessages' => MaxMessages,
       'messages' => Messages
     }.
