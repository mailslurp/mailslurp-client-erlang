-module(maislurp-client-erlang_email).

-export([encode/1]).

-export_type([maislurp-client-erlang_email/0]).

-type maislurp-client-erlang_email() ::
    #{ 'analysis' => maislurp-client-erlang_email_analysis:maislurp-client-erlang_email_analysis(),
       'attachments' => list(),
       'bcc' => list(),
       'body' => binary(),
       'bodyExcerpt' => binary(),
       'bodyMD5Hash' => binary(),
       'cc' => list(),
       'charset' => binary(),
       'createdAt' => maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'from' => binary(),
       'headers' => maps:map(),
       'id' => maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'inboxId' => maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'isHTML' => boolean(),
       'read' => boolean(),
       'replyTo' => binary(),
       'subject' => binary(),
       'teamAccess' => boolean(),
       'to' => list(),
       'updatedAt' => maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'userId' => maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid()
     }.

encode(#{ 'analysis' := Analysis,
          'attachments' := Attachments,
          'bcc' := Bcc,
          'body' := Body,
          'bodyExcerpt' := BodyExcerpt,
          'bodyMD5Hash' := BodyMD5Hash,
          'cc' := Cc,
          'charset' := Charset,
          'createdAt' := CreatedAt,
          'from' := From,
          'headers' := Headers,
          'id' := Id,
          'inboxId' := InboxId,
          'isHTML' := IsHTML,
          'read' := Read,
          'replyTo' := ReplyTo,
          'subject' := Subject,
          'teamAccess' := TeamAccess,
          'to' := To,
          'updatedAt' := UpdatedAt,
          'userId' := UserId
        }) ->
    #{ 'analysis' => Analysis,
       'attachments' => Attachments,
       'bcc' => Bcc,
       'body' => Body,
       'bodyExcerpt' => BodyExcerpt,
       'bodyMD5Hash' => BodyMD5Hash,
       'cc' => Cc,
       'charset' => Charset,
       'createdAt' => CreatedAt,
       'from' => From,
       'headers' => Headers,
       'id' => Id,
       'inboxId' => InboxId,
       'isHTML' => IsHTML,
       'read' => Read,
       'replyTo' => ReplyTo,
       'subject' => Subject,
       'teamAccess' => TeamAccess,
       'to' => To,
       'updatedAt' => UpdatedAt,
       'userId' => UserId
     }.
