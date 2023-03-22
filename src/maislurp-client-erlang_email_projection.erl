-module(maislurp-client-erlang_email_projection).

-export([encode/1]).

-export_type([maislurp-client-erlang_email_projection/0]).

-type maislurp-client-erlang_email_projection() ::
    #{ 'id' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'from' => binary(),
       'subject' => binary(),
       'attachments' => list(),
       'inboxId' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'createdAt' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'to' := list(),
       'domainId' => maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'bcc' => list(),
       'cc' => list(),
       'read' := boolean(),
       'bodyExcerpt' => binary(),
       'teamAccess' := boolean(),
       'bodyMD5Hash' => binary()
     }.

encode(#{ 'id' := Id,
          'from' := From,
          'subject' := Subject,
          'attachments' := Attachments,
          'inboxId' := InboxId,
          'createdAt' := CreatedAt,
          'to' := To,
          'domainId' := DomainId,
          'bcc' := Bcc,
          'cc' := Cc,
          'read' := Read,
          'bodyExcerpt' := BodyExcerpt,
          'teamAccess' := TeamAccess,
          'bodyMD5Hash' := BodyMD5Hash
        }) ->
    #{ 'id' => Id,
       'from' => From,
       'subject' => Subject,
       'attachments' => Attachments,
       'inboxId' => InboxId,
       'createdAt' => CreatedAt,
       'to' => To,
       'domainId' => DomainId,
       'bcc' => Bcc,
       'cc' => Cc,
       'read' => Read,
       'bodyExcerpt' => BodyExcerpt,
       'teamAccess' => TeamAccess,
       'bodyMD5Hash' => BodyMD5Hash
     }.
