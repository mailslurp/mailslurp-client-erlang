-module(maislurp-client-erlang_inbox_replier_event_projection).

-export([encode/1]).

-export_type([maislurp-client-erlang_inbox_replier_event_projection/0]).

-type maislurp-client-erlang_inbox_replier_event_projection() ::
    #{ 'message' => binary(),
       'id' => maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'status' => binary(),
       'recipients' => list(),
       'userId' => maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'emailId' => maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'inboxId' => maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'createdAt' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'sentId' => maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'replierId' => maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid()
     }.

encode(#{ 'message' := Message,
          'id' := Id,
          'status' := Status,
          'recipients' := Recipients,
          'userId' := UserId,
          'emailId' := EmailId,
          'inboxId' := InboxId,
          'createdAt' := CreatedAt,
          'sentId' := SentId,
          'replierId' := ReplierId
        }) ->
    #{ 'message' => Message,
       'id' => Id,
       'status' => Status,
       'recipients' => Recipients,
       'userId' => UserId,
       'emailId' => EmailId,
       'inboxId' => InboxId,
       'createdAt' => CreatedAt,
       'sentId' => SentId,
       'replierId' => ReplierId
     }.
