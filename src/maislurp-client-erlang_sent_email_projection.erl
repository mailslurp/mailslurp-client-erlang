-module(maislurp-client-erlang_sent_email_projection).

-export([encode/1]).

-export_type([maislurp-client-erlang_sent_email_projection/0]).

-type maislurp-client-erlang_sent_email_projection() ::
    #{ 'id' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'threadId' => maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'from' => binary(),
       'subject' => binary(),
       'sender' => maislurp-client-erlang_sender:maislurp-client-erlang_sender(),
       'recipients' => maislurp-client-erlang_email_recipients:maislurp-client-erlang_email_recipients(),
       'userId' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'inboxId' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'attachments' => list(),
       'createdAt' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'to' => list(),
       'cc' => list(),
       'bcc' => list(),
       'messageId' => binary(),
       'inReplyTo' => binary(),
       'virtualSend' := boolean(),
       'bodyExcerpt' => binary(),
       'textExcerpt' => binary(),
       'bodyMD5Hash' => binary()
     }.

encode(#{ 'id' := Id,
          'threadId' := ThreadId,
          'from' := From,
          'subject' := Subject,
          'sender' := Sender,
          'recipients' := Recipients,
          'userId' := UserId,
          'inboxId' := InboxId,
          'attachments' := Attachments,
          'createdAt' := CreatedAt,
          'to' := To,
          'cc' := Cc,
          'bcc' := Bcc,
          'messageId' := MessageId,
          'inReplyTo' := InReplyTo,
          'virtualSend' := VirtualSend,
          'bodyExcerpt' := BodyExcerpt,
          'textExcerpt' := TextExcerpt,
          'bodyMD5Hash' := BodyMD5Hash
        }) ->
    #{ 'id' => Id,
       'threadId' => ThreadId,
       'from' => From,
       'subject' => Subject,
       'sender' => Sender,
       'recipients' => Recipients,
       'userId' => UserId,
       'inboxId' => InboxId,
       'attachments' => Attachments,
       'createdAt' => CreatedAt,
       'to' => To,
       'cc' => Cc,
       'bcc' => Bcc,
       'messageId' => MessageId,
       'inReplyTo' => InReplyTo,
       'virtualSend' => VirtualSend,
       'bodyExcerpt' => BodyExcerpt,
       'textExcerpt' => TextExcerpt,
       'bodyMD5Hash' => BodyMD5Hash
     }.
