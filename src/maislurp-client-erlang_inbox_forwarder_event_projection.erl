-module(maislurp-client-erlang_inbox_forwarder_event_projection).

-export([encode/1]).

-export_type([maislurp-client-erlang_inbox_forwarder_event_projection/0]).

-type maislurp-client-erlang_inbox_forwarder_event_projection() ::
    #{ 'createdAt' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'emailId' => maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'inboxId' => maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'userId' => maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'forwarderId' => maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'message' => binary(),
       'id' => maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'status' => binary()
     }.

encode(#{ 'createdAt' := CreatedAt,
          'emailId' := EmailId,
          'inboxId' := InboxId,
          'userId' := UserId,
          'forwarderId' := ForwarderId,
          'message' := Message,
          'id' := Id,
          'status' := Status
        }) ->
    #{ 'createdAt' => CreatedAt,
       'emailId' => EmailId,
       'inboxId' => InboxId,
       'userId' => UserId,
       'forwarderId' => ForwarderId,
       'message' => Message,
       'id' => Id,
       'status' => Status
     }.
