-module(maislurp-client-erlang_sent_email_projection).

-export([encode/1]).

-export_type([maislurp-client-erlang_sent_email_projection/0]).

-type maislurp-client-erlang_sent_email_projection() ::
    #{ 'subject' => binary(),
       'id' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'messageId' => binary(),
       'userId' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'attachments' => list(),
       'inboxId' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'createdAt' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'to' => list(),
       'cc' => list(),
       'bcc' => list(),
       'from' => binary(),
       'sender' => maislurp-client-erlang_sender:maislurp-client-erlang_sender(),
       'recipients' => maislurp-client-erlang_email_recipients:maislurp-client-erlang_email_recipients(),
       'inReplyTo' => binary(),
       'virtualSend' := boolean(),
       'bodyExcerpt' => binary(),
       'textExcerpt' => binary(),
       'bodyMD5Hash' => binary(),
       'threadId' => maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid()
     }.

encode(#{ 'subject' := Subject,
          'id' := Id,
          'messageId' := MessageId,
          'userId' := UserId,
          'attachments' := Attachments,
          'inboxId' := InboxId,
          'createdAt' := CreatedAt,
          'to' := To,
          'cc' := Cc,
          'bcc' := Bcc,
          'from' := From,
          'sender' := Sender,
          'recipients' := Recipients,
          'inReplyTo' := InReplyTo,
          'virtualSend' := VirtualSend,
          'bodyExcerpt' := BodyExcerpt,
          'textExcerpt' := TextExcerpt,
          'bodyMD5Hash' := BodyMD5Hash,
          'threadId' := ThreadId
        }) ->
    #{ 'subject' => Subject,
       'id' => Id,
       'messageId' => MessageId,
       'userId' => UserId,
       'attachments' => Attachments,
       'inboxId' => InboxId,
       'createdAt' => CreatedAt,
       'to' => To,
       'cc' => Cc,
       'bcc' => Bcc,
       'from' => From,
       'sender' => Sender,
       'recipients' => Recipients,
       'inReplyTo' => InReplyTo,
       'virtualSend' => VirtualSend,
       'bodyExcerpt' => BodyExcerpt,
       'textExcerpt' => TextExcerpt,
       'bodyMD5Hash' => BodyMD5Hash,
       'threadId' => ThreadId
     }.
