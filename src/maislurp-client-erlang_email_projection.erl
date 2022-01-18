-module(maislurp-client-erlang_email_projection).

-export([encode/1]).

-export_type([maislurp-client-erlang_email_projection/0]).

-type maislurp-client-erlang_email_projection() ::
    #{ 'id' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'from' => binary(),
       'inboxId' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'subject' => binary(),
       'to' := list(),
       'attachments' => list(),
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
          'inboxId' := InboxId,
          'subject' := Subject,
          'to' := To,
          'attachments' := Attachments,
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
       'inboxId' => InboxId,
       'subject' => Subject,
       'to' => To,
       'attachments' => Attachments,
       'bcc' => Bcc,
       'cc' => Cc,
       'createdAt' => CreatedAt,
       'teamAccess' => TeamAccess,
       'read' => Read,
       'bodyMD5Hash' => BodyMD5Hash,
       'bodyExcerpt' => BodyExcerpt
     }.
