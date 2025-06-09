-module(maislurp-client-erlang_sent_email_projection).

-export([encode/1]).

-export_type([maislurp-client-erlang_sent_email_projection/0]).

-type maislurp-client-erlang_sent_email_projection() ::
    #{ 'subject' => binary(),
       'id' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'threadId' => maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'inReplyTo' => binary(),
       'from' => binary(),
       'sender' => maislurp-client-erlang_sender:maislurp-client-erlang_sender(),
       'recipients' => maislurp-client-erlang_email_recipients:maislurp-client-erlang_email_recipients(),
       'attachments' => list(),
       'inboxId' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'userId' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'createdAt' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'to' := list(),
       'cc' := list(),
       'bcc' := list(),
       'messageId' => binary(),
       'bodyExcerpt' => binary(),
       'textExcerpt' => binary(),
       'bodyMD5Hash' => binary(),
       'virtualSend' := boolean()
     }.

encode(#{ 'subject' := Subject,
          'id' := Id,
          'threadId' := ThreadId,
          'inReplyTo' := InReplyTo,
          'from' := From,
          'sender' := Sender,
          'recipients' := Recipients,
          'attachments' := Attachments,
          'inboxId' := InboxId,
          'userId' := UserId,
          'createdAt' := CreatedAt,
          'to' := To,
          'cc' := Cc,
          'bcc' := Bcc,
          'messageId' := MessageId,
          'bodyExcerpt' := BodyExcerpt,
          'textExcerpt' := TextExcerpt,
          'bodyMD5Hash' := BodyMD5Hash,
          'virtualSend' := VirtualSend
        }) ->
    #{ 'subject' => Subject,
       'id' => Id,
       'threadId' => ThreadId,
       'inReplyTo' => InReplyTo,
       'from' => From,
       'sender' => Sender,
       'recipients' => Recipients,
       'attachments' => Attachments,
       'inboxId' => InboxId,
       'userId' => UserId,
       'createdAt' => CreatedAt,
       'to' => To,
       'cc' => Cc,
       'bcc' => Bcc,
       'messageId' => MessageId,
       'bodyExcerpt' => BodyExcerpt,
       'textExcerpt' => TextExcerpt,
       'bodyMD5Hash' => BodyMD5Hash,
       'virtualSend' => VirtualSend
     }.
