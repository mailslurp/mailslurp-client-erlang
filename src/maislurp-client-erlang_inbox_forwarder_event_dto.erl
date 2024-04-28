-module(maislurp-client-erlang_inbox_forwarder_event_dto).

-export([encode/1]).

-export_type([maislurp-client-erlang_inbox_forwarder_event_dto/0]).

-type maislurp-client-erlang_inbox_forwarder_event_dto() ::
    #{ 'id' => maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'inboxId' => maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'emailId' => maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'userId' => maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'forwarderId' => maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'message' => binary(),
       'status' => binary(),
       'createdAt' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time()
     }.

encode(#{ 'id' := Id,
          'inboxId' := InboxId,
          'emailId' := EmailId,
          'userId' := UserId,
          'forwarderId' := ForwarderId,
          'message' := Message,
          'status' := Status,
          'createdAt' := CreatedAt
        }) ->
    #{ 'id' => Id,
       'inboxId' => InboxId,
       'emailId' => EmailId,
       'userId' => UserId,
       'forwarderId' => ForwarderId,
       'message' => Message,
       'status' => Status,
       'createdAt' => CreatedAt
     }.
