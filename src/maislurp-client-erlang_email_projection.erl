-module(maislurp-client-erlang_email_projection).

-export([encode/1]).

-export_type([maislurp-client-erlang_email_projection/0]).

-type maislurp-client-erlang_email_projection() ::
    #{ 'attachments' => list(),
       'bcc' => list(),
       'bodyMD5Hash' => binary(),
       'cc' => list(),
       'createdAt' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'from' => binary(),
       'id' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'inboxId' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'read' => boolean(),
       'subject' => binary(),
       'teamAccess' => boolean(),
       'to' := list()
     }.

encode(#{ 'attachments' := Attachments,
          'bcc' := Bcc,
          'bodyMD5Hash' := BodyMD5Hash,
          'cc' := Cc,
          'createdAt' := CreatedAt,
          'from' := From,
          'id' := Id,
          'inboxId' := InboxId,
          'read' := Read,
          'subject' := Subject,
          'teamAccess' := TeamAccess,
          'to' := To
        }) ->
    #{ 'attachments' => Attachments,
       'bcc' => Bcc,
       'bodyMD5Hash' => BodyMD5Hash,
       'cc' => Cc,
       'createdAt' => CreatedAt,
       'from' => From,
       'id' => Id,
       'inboxId' => InboxId,
       'read' => Read,
       'subject' => Subject,
       'teamAccess' => TeamAccess,
       'to' => To
     }.
