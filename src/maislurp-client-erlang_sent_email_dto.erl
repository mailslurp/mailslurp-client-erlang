-module(maislurp-client-erlang_sent_email_dto).

-export([encode/1]).

-export_type([maislurp-client-erlang_sent_email_dto/0]).

-type maislurp-client-erlang_sent_email_dto() ::
    #{ 'id' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'userId' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'inboxId' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'domainId' => maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'to' => list(),
       'from' => binary(),
       'sender' => maislurp-client-erlang_sender:maislurp-client-erlang_sender(),
       'recipients' => maislurp-client-erlang_email_recipients:maislurp-client-erlang_email_recipients(),
       'replyTo' => binary(),
       'cc' => list(),
       'bcc' => list(),
       'attachments' => list(),
       'subject' => binary(),
       'bodyMD5Hash' => binary(),
       'body' => binary(),
       'toContacts' => list(),
       'toGroup' => maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'charset' => binary(),
       'isHTML' => boolean(),
       'sentAt' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'createdAt' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'pixelIds' => list(),
       'messageId' => binary(),
       'messageIds' => list(),
       'virtualSend' => boolean(),
       'templateId' => maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'templateVariables' => maps:map(),
       'headers' => maps:map(),
       'threadId' => maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'bodyExcerpt' => binary(),
       'textExcerpt' => binary(),
       'inReplyTo' => binary(),
       'favourite' => boolean(),
       'sizeBytes' => integer(),
       'html' => boolean()
     }.

encode(#{ 'id' := Id,
          'userId' := UserId,
          'inboxId' := InboxId,
          'domainId' := DomainId,
          'to' := To,
          'from' := From,
          'sender' := Sender,
          'recipients' := Recipients,
          'replyTo' := ReplyTo,
          'cc' := Cc,
          'bcc' := Bcc,
          'attachments' := Attachments,
          'subject' := Subject,
          'bodyMD5Hash' := BodyMD5Hash,
          'body' := Body,
          'toContacts' := ToContacts,
          'toGroup' := ToGroup,
          'charset' := Charset,
          'isHTML' := IsHTML,
          'sentAt' := SentAt,
          'createdAt' := CreatedAt,
          'pixelIds' := PixelIds,
          'messageId' := MessageId,
          'messageIds' := MessageIds,
          'virtualSend' := VirtualSend,
          'templateId' := TemplateId,
          'templateVariables' := TemplateVariables,
          'headers' := Headers,
          'threadId' := ThreadId,
          'bodyExcerpt' := BodyExcerpt,
          'textExcerpt' := TextExcerpt,
          'inReplyTo' := InReplyTo,
          'favourite' := Favourite,
          'sizeBytes' := SizeBytes,
          'html' := Html
        }) ->
    #{ 'id' => Id,
       'userId' => UserId,
       'inboxId' => InboxId,
       'domainId' => DomainId,
       'to' => To,
       'from' => From,
       'sender' => Sender,
       'recipients' => Recipients,
       'replyTo' => ReplyTo,
       'cc' => Cc,
       'bcc' => Bcc,
       'attachments' => Attachments,
       'subject' => Subject,
       'bodyMD5Hash' => BodyMD5Hash,
       'body' => Body,
       'toContacts' => ToContacts,
       'toGroup' => ToGroup,
       'charset' => Charset,
       'isHTML' => IsHTML,
       'sentAt' => SentAt,
       'createdAt' => CreatedAt,
       'pixelIds' => PixelIds,
       'messageId' => MessageId,
       'messageIds' => MessageIds,
       'virtualSend' => VirtualSend,
       'templateId' => TemplateId,
       'templateVariables' => TemplateVariables,
       'headers' => Headers,
       'threadId' => ThreadId,
       'bodyExcerpt' => BodyExcerpt,
       'textExcerpt' => TextExcerpt,
       'inReplyTo' => InReplyTo,
       'favourite' => Favourite,
       'sizeBytes' => SizeBytes,
       'html' => Html
     }.
