-module(maislurp-client-erlang_email_projection).

-export([encode/1]).

-export_type([maislurp-client-erlang_email_projection/0]).

-type maislurp-client-erlang_email_projection() ::
    #{ 'id' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'from' => binary(),
       'subject' => binary(),
       'attachments' => list(),
       'inboxId' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'to' := list(),
       'createdAt' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'bcc' => list(),
       'cc' => list(),
       'domainId' => maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'bodyMD5Hash' => binary(),
       'bodyExcerpt' => binary(),
       'read' := boolean(),
       'teamAccess' := boolean()
     }.

encode(#{ 'id' := Id,
          'from' := From,
          'subject' := Subject,
          'attachments' := Attachments,
          'inboxId' := InboxId,
          'to' := To,
          'createdAt' := CreatedAt,
          'bcc' := Bcc,
          'cc' := Cc,
          'domainId' := DomainId,
          'bodyMD5Hash' := BodyMD5Hash,
          'bodyExcerpt' := BodyExcerpt,
          'read' := Read,
          'teamAccess' := TeamAccess
        }) ->
    #{ 'id' => Id,
       'from' => From,
       'subject' => Subject,
       'attachments' => Attachments,
       'inboxId' => InboxId,
       'to' => To,
       'createdAt' => CreatedAt,
       'bcc' => Bcc,
       'cc' => Cc,
       'domainId' => DomainId,
       'bodyMD5Hash' => BodyMD5Hash,
       'bodyExcerpt' => BodyExcerpt,
       'read' => Read,
       'teamAccess' => TeamAccess
     }.
