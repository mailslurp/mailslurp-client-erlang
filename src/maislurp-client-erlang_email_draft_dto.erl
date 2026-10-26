-module(maislurp-client-erlang_email_draft_dto).

-export([encode/1]).

-export_type([maislurp-client-erlang_email_draft_dto/0]).

-type maislurp-client-erlang_email_draft_dto() ::
    #{ 'id' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'userId' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'inboxId' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'to' => list(),
       'cc' => list(),
       'bcc' => list(),
       'from' => binary(),
       'sender' => maislurp-client-erlang_sender:maislurp-client-erlang_sender(),
       'recipients' => maislurp-client-erlang_email_recipients:maislurp-client-erlang_email_recipients(),
       'subject' => binary(),
       'bodyExcerpt' => binary(),
       'textExcerpt' => binary(),
       'attachments' => list(),
       'sendOptions' := maislurp-client-erlang_send_email_options:maislurp-client-erlang_send_email_options(),
       'createdAt' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'updatedAt' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time()
     }.

encode(#{ 'id' := Id,
          'userId' := UserId,
          'inboxId' := InboxId,
          'to' := To,
          'cc' := Cc,
          'bcc' := Bcc,
          'from' := From,
          'sender' := Sender,
          'recipients' := Recipients,
          'subject' := Subject,
          'bodyExcerpt' := BodyExcerpt,
          'textExcerpt' := TextExcerpt,
          'attachments' := Attachments,
          'sendOptions' := SendOptions,
          'createdAt' := CreatedAt,
          'updatedAt' := UpdatedAt
        }) ->
    #{ 'id' => Id,
       'userId' => UserId,
       'inboxId' => InboxId,
       'to' => To,
       'cc' => Cc,
       'bcc' => Bcc,
       'from' => From,
       'sender' => Sender,
       'recipients' => Recipients,
       'subject' => Subject,
       'bodyExcerpt' => BodyExcerpt,
       'textExcerpt' => TextExcerpt,
       'attachments' => Attachments,
       'sendOptions' => SendOptions,
       'createdAt' => CreatedAt,
       'updatedAt' => UpdatedAt
     }.
