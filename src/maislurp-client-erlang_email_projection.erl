-module(maislurp-client-erlang_email_projection).

-export([encode/1]).

-export_type([maislurp-client-erlang_email_projection/0]).

-type maislurp-client-erlang_email_projection() ::
    #{ 'id' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'from' => binary(),
       'subject' => binary(),
       'inboxId' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'attachments' => list(),
       'to' := list(),
       'teamAccess' => boolean(),
       'read' => boolean(),
       'bodyMD5Hash' => binary(),
       'bodyExcerpt' => binary(),
       'createdAt' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'bcc' => list(),
       'cc' => list()
     }.

encode(#{ 'id' := Id,
          'from' := From,
          'subject' := Subject,
          'inboxId' := InboxId,
          'attachments' := Attachments,
          'to' := To,
          'teamAccess' := TeamAccess,
          'read' := Read,
          'bodyMD5Hash' := BodyMD5Hash,
          'bodyExcerpt' := BodyExcerpt,
          'createdAt' := CreatedAt,
          'bcc' := Bcc,
          'cc' := Cc
        }) ->
    #{ 'id' => Id,
       'from' => From,
       'subject' => Subject,
       'inboxId' => InboxId,
       'attachments' => Attachments,
       'to' => To,
       'teamAccess' => TeamAccess,
       'read' => Read,
       'bodyMD5Hash' => BodyMD5Hash,
       'bodyExcerpt' => BodyExcerpt,
       'createdAt' => CreatedAt,
       'bcc' => Bcc,
       'cc' => Cc
     }.
