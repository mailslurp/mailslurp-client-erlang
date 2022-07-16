-module(maislurp-client-erlang_email_projection).

-export([encode/1]).

-export_type([maislurp-client-erlang_email_projection/0]).

-type maislurp-client-erlang_email_projection() ::
    #{ 'id' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'from' => binary(),
       'subject' => binary(),
       'inboxId' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'attachments' => list(),
       'bodyMD5Hash' => binary(),
       'bodyExcerpt' => binary(),
       'to' := list(),
       'createdAt' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'bcc' => list(),
       'cc' => list(),
       'domainId' => maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'teamAccess' := boolean(),
       'read' := boolean()
     }.

encode(#{ 'id' := Id,
          'from' := From,
          'subject' := Subject,
          'inboxId' := InboxId,
          'attachments' := Attachments,
          'bodyMD5Hash' := BodyMD5Hash,
          'bodyExcerpt' := BodyExcerpt,
          'to' := To,
          'createdAt' := CreatedAt,
          'bcc' := Bcc,
          'cc' := Cc,
          'domainId' := DomainId,
          'teamAccess' := TeamAccess,
          'read' := Read
        }) ->
    #{ 'id' => Id,
       'from' => From,
       'subject' => Subject,
       'inboxId' => InboxId,
       'attachments' => Attachments,
       'bodyMD5Hash' => BodyMD5Hash,
       'bodyExcerpt' => BodyExcerpt,
       'to' => To,
       'createdAt' => CreatedAt,
       'bcc' => Bcc,
       'cc' => Cc,
       'domainId' => DomainId,
       'teamAccess' => TeamAccess,
       'read' => Read
     }.
