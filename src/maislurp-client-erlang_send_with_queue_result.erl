-module(maislurp-client-erlang_send_with_queue_result).

-export([encode/1]).

-export_type([maislurp-client-erlang_send_with_queue_result/0]).

-type maislurp-client-erlang_send_with_queue_result() ::
    #{ 'id' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'userId' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'subject' => binary(),
       'inboxId' => maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'headerId' := binary(),
       'delivered' := boolean(),
       'exceptionName' => binary(),
       'message' => binary(),
       'createdAt' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'updatedAt' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time()
     }.

encode(#{ 'id' := Id,
          'userId' := UserId,
          'subject' := Subject,
          'inboxId' := InboxId,
          'headerId' := HeaderId,
          'delivered' := Delivered,
          'exceptionName' := ExceptionName,
          'message' := Message,
          'createdAt' := CreatedAt,
          'updatedAt' := UpdatedAt
        }) ->
    #{ 'id' => Id,
       'userId' => UserId,
       'subject' => Subject,
       'inboxId' => InboxId,
       'headerId' => HeaderId,
       'delivered' => Delivered,
       'exceptionName' => ExceptionName,
       'message' => Message,
       'createdAt' => CreatedAt,
       'updatedAt' => UpdatedAt
     }.
