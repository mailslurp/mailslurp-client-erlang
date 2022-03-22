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
       'bcc' => list(),
       'cc' => list(),
       'createdAt' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'teamAccess' => boolean(),
       'read' => boolean(),
       'bodyMD5Hash' => binary(),
       'bodyExcerpt' => binary()
     }.

encode(#{ 'id' := Id,
          'from' := From,
          'subject' := Subject,
          'attachments' := Attachments,
          'inboxId' := InboxId,
          'to' := To,
          'bcc' := Bcc,
          'cc' := Cc,
          'createdAt' := CreatedAt,
          'teamAccess' := TeamAccess,
          'read' := Read,
          'bodyMD5Hash' := BodyMD5Hash,
          'bodyExcerpt' := BodyExcerpt
        }) ->
    #{ 'id' => Id,
       'from' => From,
       'subject' => Subject,
       'attachments' => Attachments,
       'inboxId' => InboxId,
       'to' => To,
       'bcc' => Bcc,
       'cc' => Cc,
       'createdAt' => CreatedAt,
       'teamAccess' => TeamAccess,
       'read' => Read,
       'bodyMD5Hash' => BodyMD5Hash,
       'bodyExcerpt' => BodyExcerpt
     }.
