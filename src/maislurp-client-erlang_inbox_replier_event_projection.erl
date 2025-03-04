-module(maislurp-client-erlang_inbox_replier_event_projection).

-export([encode/1]).

-export_type([maislurp-client-erlang_inbox_replier_event_projection/0]).

-type maislurp-client-erlang_inbox_replier_event_projection() ::
    #{ 'createdAt' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'recipients' => list(),
       'userId' => maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'emailId' => maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'inboxId' => maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'sentId' => maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'replierId' => maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'message' => binary(),
       'id' => maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'status' => binary()
     }.

encode(#{ 'createdAt' := CreatedAt,
          'recipients' := Recipients,
          'userId' := UserId,
          'emailId' := EmailId,
          'inboxId' := InboxId,
          'sentId' := SentId,
          'replierId' := ReplierId,
          'message' := Message,
          'id' := Id,
          'status' := Status
        }) ->
    #{ 'createdAt' => CreatedAt,
       'recipients' => Recipients,
       'userId' => UserId,
       'emailId' => EmailId,
       'inboxId' => InboxId,
       'sentId' => SentId,
       'replierId' => ReplierId,
       'message' => Message,
       'id' => Id,
       'status' => Status
     }.
