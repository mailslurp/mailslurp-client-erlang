-module(maislurp-client-erlang_email_projection).

-export([encode/1]).

-export_type([maislurp-client-erlang_email_projection/0]).

-type maislurp-client-erlang_email_projection() ::
    #{ 'id' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'from' => binary(),
       'inboxId' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'subject' => binary(),
       'attachments' => list(),
       'createdAt' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'to' := list(),
       'bcc' => list(),
       'cc' => list(),
       'domainId' => maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'read' := boolean(),
       'bodyExcerpt' => binary(),
       'teamAccess' := boolean(),
       'bodyMD5Hash' => binary()
     }.

encode(#{ 'id' := Id,
          'from' := From,
          'inboxId' := InboxId,
          'subject' := Subject,
          'attachments' := Attachments,
          'createdAt' := CreatedAt,
          'to' := To,
          'bcc' := Bcc,
          'cc' := Cc,
          'domainId' := DomainId,
          'read' := Read,
          'bodyExcerpt' := BodyExcerpt,
          'teamAccess' := TeamAccess,
          'bodyMD5Hash' := BodyMD5Hash
        }) ->
    #{ 'id' => Id,
       'from' => From,
       'inboxId' => InboxId,
       'subject' => Subject,
       'attachments' => Attachments,
       'createdAt' => CreatedAt,
       'to' => To,
       'bcc' => Bcc,
       'cc' => Cc,
       'domainId' => DomainId,
       'read' => Read,
       'bodyExcerpt' => BodyExcerpt,
       'teamAccess' => TeamAccess,
       'bodyMD5Hash' => BodyMD5Hash
     }.
