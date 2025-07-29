-module(maislurp-client-erlang_sent_email_projection).

-export([encode/1]).

-export_type([maislurp-client-erlang_sent_email_projection/0]).

-type maislurp-client-erlang_sent_email_projection() ::
    #{ 'id' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'recipients' => maislurp-client-erlang_email_recipients:maislurp-client-erlang_email_recipients(),
       'from' => binary(),
       'sender' => maislurp-client-erlang_sender:maislurp-client-erlang_sender(),
       'subject' => binary(),
       'attachments' => list(),
       'inboxId' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'userId' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'createdAt' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'to' => list(),
       'cc' => list(),
       'bcc' => list(),
       'messageId' => binary(),
       'inReplyTo' => binary(),
       'bodyExcerpt' => binary(),
       'textExcerpt' => binary(),
       'bodyMD5Hash' => binary(),
       'virtualSend' := boolean(),
       'threadId' => maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid()
     }.

encode(#{ 'id' := Id,
          'recipients' := Recipients,
          'from' := From,
          'sender' := Sender,
          'subject' := Subject,
          'attachments' := Attachments,
          'inboxId' := InboxId,
          'userId' := UserId,
          'createdAt' := CreatedAt,
          'to' := To,
          'cc' := Cc,
          'bcc' := Bcc,
          'messageId' := MessageId,
          'inReplyTo' := InReplyTo,
          'bodyExcerpt' := BodyExcerpt,
          'textExcerpt' := TextExcerpt,
          'bodyMD5Hash' := BodyMD5Hash,
          'virtualSend' := VirtualSend,
          'threadId' := ThreadId
        }) ->
    #{ 'id' => Id,
       'recipients' => Recipients,
       'from' => From,
       'sender' => Sender,
       'subject' => Subject,
       'attachments' => Attachments,
       'inboxId' => InboxId,
       'userId' => UserId,
       'createdAt' => CreatedAt,
       'to' => To,
       'cc' => Cc,
       'bcc' => Bcc,
       'messageId' => MessageId,
       'inReplyTo' => InReplyTo,
       'bodyExcerpt' => BodyExcerpt,
       'textExcerpt' => TextExcerpt,
       'bodyMD5Hash' => BodyMD5Hash,
       'virtualSend' => VirtualSend,
       'threadId' => ThreadId
     }.
