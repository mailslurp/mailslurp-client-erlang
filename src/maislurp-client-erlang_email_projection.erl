-module(maislurp-client-erlang_email_projection).

-export([encode/1]).

-export_type([maislurp-client-erlang_email_projection/0]).

-type maislurp-client-erlang_email_projection() ::
    #{ 'createdAt' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'inboxId' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'attachments' => list(),
       'to' := list(),
       'domainId' => maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'bcc' => list(),
       'cc' => list(),
       'read' := boolean(),
       'bodyExcerpt' => binary(),
       'teamAccess' := boolean(),
       'bodyMD5Hash' => binary(),
       'textExcerpt' => binary(),
       'subject' => binary(),
       'id' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'from' => binary()
     }.

encode(#{ 'createdAt' := CreatedAt,
          'inboxId' := InboxId,
          'attachments' := Attachments,
          'to' := To,
          'domainId' := DomainId,
          'bcc' := Bcc,
          'cc' := Cc,
          'read' := Read,
          'bodyExcerpt' := BodyExcerpt,
          'teamAccess' := TeamAccess,
          'bodyMD5Hash' := BodyMD5Hash,
          'textExcerpt' := TextExcerpt,
          'subject' := Subject,
          'id' := Id,
          'from' := From
        }) ->
    #{ 'createdAt' => CreatedAt,
       'inboxId' => InboxId,
       'attachments' => Attachments,
       'to' => To,
       'domainId' => DomainId,
       'bcc' => Bcc,
       'cc' => Cc,
       'read' => Read,
       'bodyExcerpt' => BodyExcerpt,
       'teamAccess' => TeamAccess,
       'bodyMD5Hash' => BodyMD5Hash,
       'textExcerpt' => TextExcerpt,
       'subject' => Subject,
       'id' => Id,
       'from' => From
     }.
