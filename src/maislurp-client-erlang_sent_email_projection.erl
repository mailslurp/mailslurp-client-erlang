-module(maislurp-client-erlang_sent_email_projection).

-export([encode/1]).

-export_type([maislurp-client-erlang_sent_email_projection/0]).

-type maislurp-client-erlang_sent_email_projection() ::
    #{ 'subject' => binary(),
       'createdAt' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'id' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'from' => binary(),
       'sender' => maislurp-client-erlang_sender:maislurp-client-erlang_sender(),
       'recipients' => maislurp-client-erlang_email_recipients:maislurp-client-erlang_email_recipients(),
       'userId' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'attachments' => list(),
       'inboxId' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'to' := list(),
       'cc' := list(),
       'bcc' := list(),
       'messageId' => binary(),
       'inReplyTo' => binary(),
       'bodyExcerpt' => binary(),
       'textExcerpt' => binary(),
       'bodyMD5Hash' => binary(),
       'virtualSend' := boolean(),
       'threadId' => maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid()
     }.

encode(#{ 'subject' := Subject,
          'createdAt' := CreatedAt,
          'id' := Id,
          'from' := From,
          'sender' := Sender,
          'recipients' := Recipients,
          'userId' := UserId,
          'attachments' := Attachments,
          'inboxId' := InboxId,
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
    #{ 'subject' => Subject,
       'createdAt' => CreatedAt,
       'id' => Id,
       'from' => From,
       'sender' => Sender,
       'recipients' => Recipients,
       'userId' => UserId,
       'attachments' => Attachments,
       'inboxId' => InboxId,
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
