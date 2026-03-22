-module(maislurp-client-erlang_inbox_forwarder_event_projection).

-export([encode/1]).

-export_type([maislurp-client-erlang_inbox_forwarder_event_projection/0]).

-type maislurp-client-erlang_inbox_forwarder_event_projection() ::
    #{ 'message' => binary(),
       'id' => maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'userId' => maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'emailId' => maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'inboxId' => maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'createdAt' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'sentId' => maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'forwarderId' => maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'status' => binary()
     }.

encode(#{ 'message' := Message,
          'id' := Id,
          'userId' := UserId,
          'emailId' := EmailId,
          'inboxId' := InboxId,
          'createdAt' := CreatedAt,
          'sentId' := SentId,
          'forwarderId' := ForwarderId,
          'status' := Status
        }) ->
    #{ 'message' => Message,
       'id' => Id,
       'userId' => UserId,
       'emailId' => EmailId,
       'inboxId' => InboxId,
       'createdAt' => CreatedAt,
       'sentId' => SentId,
       'forwarderId' => ForwarderId,
       'status' => Status
     }.
