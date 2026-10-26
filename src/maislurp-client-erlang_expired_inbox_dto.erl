-module(maislurp-client-erlang_expired_inbox_dto).

-export([encode/1]).

-export_type([maislurp-client-erlang_expired_inbox_dto/0]).

-type maislurp-client-erlang_expired_inbox_dto() ::
    #{ 'id' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'inboxId' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'emailAddress' := binary()
     }.

encode(#{ 'id' := Id,
          'inboxId' := InboxId,
          'emailAddress' := EmailAddress
        }) ->
    #{ 'id' => Id,
       'inboxId' => InboxId,
       'emailAddress' => EmailAddress
     }.
