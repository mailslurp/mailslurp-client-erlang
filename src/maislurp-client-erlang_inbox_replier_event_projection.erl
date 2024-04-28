-module(maislurp-client-erlang_inbox_replier_event_projection).

-export([encode/1]).

-export_type([maislurp-client-erlang_inbox_replier_event_projection/0]).

-type maislurp-client-erlang_inbox_replier_event_projection() ::
    #{ 'replierId' => maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'recipients' => list(),
       'emailId' => maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'inboxId' => maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'userId' => maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'sentId' => maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'createdAt' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'message' => binary(),
       'id' => maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'status' => binary()
     }.

encode(#{ 'replierId' := ReplierId,
          'recipients' := Recipients,
          'emailId' := EmailId,
          'inboxId' := InboxId,
          'userId' := UserId,
          'sentId' := SentId,
          'createdAt' := CreatedAt,
          'message' := Message,
          'id' := Id,
          'status' := Status
        }) ->
    #{ 'replierId' => ReplierId,
       'recipients' => Recipients,
       'emailId' => EmailId,
       'inboxId' => InboxId,
       'userId' => UserId,
       'sentId' => SentId,
       'createdAt' => CreatedAt,
       'message' => Message,
       'id' => Id,
       'status' => Status
     }.
