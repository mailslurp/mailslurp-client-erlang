-module(maislurp-client-erlang_inbox_forwarder_event_projection).

-export([encode/1]).

-export_type([maislurp-client-erlang_inbox_forwarder_event_projection/0]).

-type maislurp-client-erlang_inbox_forwarder_event_projection() ::
    #{ 'createdAt' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'userId' => maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'emailId' => maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'inboxId' => maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'sentId' => maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'forwarderId' => maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'message' => binary(),
       'id' => maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'status' => binary()
     }.

encode(#{ 'createdAt' := CreatedAt,
          'userId' := UserId,
          'emailId' := EmailId,
          'inboxId' := InboxId,
          'sentId' := SentId,
          'forwarderId' := ForwarderId,
          'message' := Message,
          'id' := Id,
          'status' := Status
        }) ->
    #{ 'createdAt' => CreatedAt,
       'userId' => UserId,
       'emailId' => EmailId,
       'inboxId' => InboxId,
       'sentId' => SentId,
       'forwarderId' => ForwarderId,
       'message' => Message,
       'id' => Id,
       'status' => Status
     }.
