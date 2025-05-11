-module(maislurp-client-erlang_inbox_forwarder_dto).

-export([encode/1]).

-export_type([maislurp-client-erlang_inbox_forwarder_dto/0]).

-type maislurp-client-erlang_inbox_forwarder_dto() ::
    #{ 'id' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'inboxId' => maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'name' => binary(),
       'field' := binary(),
       'match' := binary(),
       'forwardToRecipients' := list(),
       'createdAt' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time()
     }.

encode(#{ 'id' := Id,
          'inboxId' := InboxId,
          'name' := Name,
          'field' := Field,
          'match' := Match,
          'forwardToRecipients' := ForwardToRecipients,
          'createdAt' := CreatedAt
        }) ->
    #{ 'id' => Id,
       'inboxId' => InboxId,
       'name' => Name,
       'field' => Field,
       'match' => Match,
       'forwardToRecipients' => ForwardToRecipients,
       'createdAt' => CreatedAt
     }.
