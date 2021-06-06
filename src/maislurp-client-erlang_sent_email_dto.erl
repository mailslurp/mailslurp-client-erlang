-module(maislurp-client-erlang_sent_email_dto).

-export([encode/1]).

-export_type([maislurp-client-erlang_sent_email_dto/0]).

-type maislurp-client-erlang_sent_email_dto() ::
    #{ 'attachments' => list(),
       'bcc' => list(),
       'body' => binary(),
       'bodyMD5Hash' => binary(),
       'cc' => list(),
       'charset' => binary(),
       'from' => binary(),
       'id' => maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'inboxId' => maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'isHTML' => boolean(),
       'replyTo' => binary(),
       'sentAt' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'subject' => binary(),
       'to' => list(),
       'userId' => maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid()
     }.

encode(#{ 'attachments' := Attachments,
          'bcc' := Bcc,
          'body' := Body,
          'bodyMD5Hash' := BodyMD5Hash,
          'cc' := Cc,
          'charset' := Charset,
          'from' := From,
          'id' := Id,
          'inboxId' := InboxId,
          'isHTML' := IsHTML,
          'replyTo' := ReplyTo,
          'sentAt' := SentAt,
          'subject' := Subject,
          'to' := To,
          'userId' := UserId
        }) ->
    #{ 'attachments' => Attachments,
       'bcc' => Bcc,
       'body' => Body,
       'bodyMD5Hash' => BodyMD5Hash,
       'cc' => Cc,
       'charset' => Charset,
       'from' => From,
       'id' => Id,
       'inboxId' => InboxId,
       'isHTML' => IsHTML,
       'replyTo' => ReplyTo,
       'sentAt' => SentAt,
       'subject' => Subject,
       'to' => To,
       'userId' => UserId
     }.
