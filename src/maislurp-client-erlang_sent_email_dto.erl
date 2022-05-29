-module(maislurp-client-erlang_sent_email_dto).

-export([encode/1]).

-export_type([maislurp-client-erlang_sent_email_dto/0]).

-type maislurp-client-erlang_sent_email_dto() ::
    #{ 'id' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'userId' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'inboxId' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'to' => list(),
       'from' => binary(),
       'replyTo' => binary(),
       'cc' => list(),
       'bcc' => list(),
       'attachments' => list(),
       'subject' => binary(),
       'bodyMD5Hash' => binary(),
       'body' => binary(),
       'charset' => binary(),
       'isHTML' => boolean(),
       'sentAt' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'pixelIds' => list(),
       'messageId' => binary(),
       'virtualSend' => boolean(),
       'html' => boolean()
     }.

encode(#{ 'id' := Id,
          'userId' := UserId,
          'inboxId' := InboxId,
          'to' := To,
          'from' := From,
          'replyTo' := ReplyTo,
          'cc' := Cc,
          'bcc' := Bcc,
          'attachments' := Attachments,
          'subject' := Subject,
          'bodyMD5Hash' := BodyMD5Hash,
          'body' := Body,
          'charset' := Charset,
          'isHTML' := IsHTML,
          'sentAt' := SentAt,
          'pixelIds' := PixelIds,
          'messageId' := MessageId,
          'virtualSend' := VirtualSend,
          'html' := Html
        }) ->
    #{ 'id' => Id,
       'userId' => UserId,
       'inboxId' => InboxId,
       'to' => To,
       'from' => From,
       'replyTo' => ReplyTo,
       'cc' => Cc,
       'bcc' => Bcc,
       'attachments' => Attachments,
       'subject' => Subject,
       'bodyMD5Hash' => BodyMD5Hash,
       'body' => Body,
       'charset' => Charset,
       'isHTML' => IsHTML,
       'sentAt' => SentAt,
       'pixelIds' => PixelIds,
       'messageId' => MessageId,
       'virtualSend' => VirtualSend,
       'html' => Html
     }.
