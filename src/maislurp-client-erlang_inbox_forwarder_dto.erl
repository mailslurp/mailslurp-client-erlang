-module(maislurp-client-erlang_inbox_forwarder_dto).

-export([encode/1]).

-export_type([maislurp-client-erlang_inbox_forwarder_dto/0]).

-type maislurp-client-erlang_inbox_forwarder_dto() ::
    #{ 'createdAt' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'field' := binary(),
       'forwardToRecipients' := list(),
       'id' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'inboxId' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'match' := binary()
     }.

encode(#{ 'createdAt' := CreatedAt,
          'field' := Field,
          'forwardToRecipients' := ForwardToRecipients,
          'id' := Id,
          'inboxId' := InboxId,
          'match' := Match
        }) ->
    #{ 'createdAt' => CreatedAt,
       'field' => Field,
       'forwardToRecipients' => ForwardToRecipients,
       'id' => Id,
       'inboxId' => InboxId,
       'match' => Match
     }.
