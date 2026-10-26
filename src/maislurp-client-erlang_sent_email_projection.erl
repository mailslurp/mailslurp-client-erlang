-module(maislurp-client-erlang_sent_email_projection).

-export([encode/1]).

-export_type([maislurp-client-erlang_sent_email_projection/0]).

-type maislurp-client-erlang_sent_email_projection() ::
    #{ 'subject' => binary(),
       'from' => binary(),
       'id' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'threadId' => maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'userId' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'inboxId' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'recipients' => maislurp-client-erlang_email_recipients:maislurp-client-erlang_email_recipients(),
       'attachments' => list(),
       'textExcerpt' => binary(),
       'bodyExcerpt' => binary(),
       'to' => list(),
       'createdAt' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'cc' => list(),
       'bcc' => list(),
       'messageId' => binary(),
       'inReplyTo' => binary(),
       'sender' => maislurp-client-erlang_sender:maislurp-client-erlang_sender(),
       'bodyMD5Hash' => binary(),
       'virtualSend' := boolean()
     }.

encode(#{ 'subject' := Subject,
          'from' := From,
          'id' := Id,
          'threadId' := ThreadId,
          'userId' := UserId,
          'inboxId' := InboxId,
          'recipients' := Recipients,
          'attachments' := Attachments,
          'textExcerpt' := TextExcerpt,
          'bodyExcerpt' := BodyExcerpt,
          'to' := To,
          'createdAt' := CreatedAt,
          'cc' := Cc,
          'bcc' := Bcc,
          'messageId' := MessageId,
          'inReplyTo' := InReplyTo,
          'sender' := Sender,
          'bodyMD5Hash' := BodyMD5Hash,
          'virtualSend' := VirtualSend
        }) ->
    #{ 'subject' => Subject,
       'from' => From,
       'id' => Id,
       'threadId' => ThreadId,
       'userId' => UserId,
       'inboxId' => InboxId,
       'recipients' => Recipients,
       'attachments' => Attachments,
       'textExcerpt' => TextExcerpt,
       'bodyExcerpt' => BodyExcerpt,
       'to' => To,
       'createdAt' => CreatedAt,
       'cc' => Cc,
       'bcc' => Bcc,
       'messageId' => MessageId,
       'inReplyTo' => InReplyTo,
       'sender' => Sender,
       'bodyMD5Hash' => BodyMD5Hash,
       'virtualSend' => VirtualSend
     }.
