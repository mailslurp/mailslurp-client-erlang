-module(maislurp-client-erlang_email_thread_dto).

-export([encode/1]).

-export_type([maislurp-client-erlang_email_thread_dto/0]).

-type maislurp-client-erlang_email_thread_dto() ::
    #{ 'id' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'userId' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'inboxId' => maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'from' => binary(),
       'to' := list(),
       'cc' => list(),
       'bcc' => list(),
       'sender' => maislurp-client-erlang_sender:maislurp-client-erlang_sender(),
       'recipients' => maislurp-client-erlang_email_recipients:maislurp-client-erlang_email_recipients(),
       'subject' => binary(),
       'createdAt' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'updatedAt' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time()
     }.

encode(#{ 'id' := Id,
          'userId' := UserId,
          'inboxId' := InboxId,
          'from' := From,
          'to' := To,
          'cc' := Cc,
          'bcc' := Bcc,
          'sender' := Sender,
          'recipients' := Recipients,
          'subject' := Subject,
          'createdAt' := CreatedAt,
          'updatedAt' := UpdatedAt
        }) ->
    #{ 'id' => Id,
       'userId' => UserId,
       'inboxId' => InboxId,
       'from' => From,
       'to' => To,
       'cc' => Cc,
       'bcc' => Bcc,
       'sender' => Sender,
       'recipients' => Recipients,
       'subject' => Subject,
       'createdAt' => CreatedAt,
       'updatedAt' => UpdatedAt
     }.
