-module(maislurp-client-erlang_email).

-export([encode/1]).

-export_type([maislurp-client-erlang_email/0]).

-type maislurp-client-erlang_email() ::
    #{ 'id' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'userId' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'inboxId' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'domainId' => maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'to' := list(),
       'from' => binary(),
       'sender' => maislurp-client-erlang_sender:maislurp-client-erlang_sender(),
       'recipients' => maislurp-client-erlang_email_recipients:maislurp-client-erlang_email_recipients(),
       'replyTo' => binary(),
       'cc' => list(),
       'bcc' => list(),
       'headers' => maps:map(),
       'headersMap' => maps:map(),
       'attachments' => list(),
       'subject' => binary(),
       'body' => binary(),
       'bodyExcerpt' => binary(),
       'textExcerpt' => binary(),
       'bodyMD5Hash' => binary(),
       'isHTML' => boolean(),
       'charset' => binary(),
       'analysis' => maislurp-client-erlang_email_analysis:maislurp-client-erlang_email_analysis(),
       'createdAt' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'updatedAt' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'read' := boolean(),
       'teamAccess' := boolean(),
       'isXAmpHtml' => boolean(),
       'bodyPartContentTypes' => list(),
       'xampHtml' => boolean(),
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
          'headers' := Headers,
          'headersMap' := HeadersMap,
          'attachments' := Attachments,
          'subject' := Subject,
          'body' := Body,
          'bodyExcerpt' := BodyExcerpt,
          'textExcerpt' := TextExcerpt,
          'bodyMD5Hash' := BodyMD5Hash,
          'isHTML' := IsHTML,
          'charset' := Charset,
          'analysis' := Analysis,
          'createdAt' := CreatedAt,
          'updatedAt' := UpdatedAt,
          'read' := Read,
          'teamAccess' := TeamAccess,
          'isXAmpHtml' := IsXAmpHtml,
          'bodyPartContentTypes' := BodyPartContentTypes,
          'xampHtml' := XampHtml,
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
       'headers' => Headers,
       'headersMap' => HeadersMap,
       'attachments' => Attachments,
       'subject' => Subject,
       'body' => Body,
       'bodyExcerpt' => BodyExcerpt,
       'textExcerpt' => TextExcerpt,
       'bodyMD5Hash' => BodyMD5Hash,
       'isHTML' => IsHTML,
       'charset' => Charset,
       'analysis' => Analysis,
       'createdAt' => CreatedAt,
       'updatedAt' => UpdatedAt,
       'read' => Read,
       'teamAccess' => TeamAccess,
       'isXAmpHtml' => IsXAmpHtml,
       'bodyPartContentTypes' => BodyPartContentTypes,
       'xampHtml' => XampHtml,
       'html' => Html
     }.
