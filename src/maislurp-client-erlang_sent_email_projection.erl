-module(maislurp-client-erlang_sent_email_projection).

-export([encode/1]).

-export_type([maislurp-client-erlang_sent_email_projection/0]).

-type maislurp-client-erlang_sent_email_projection() ::
    #{ 'id' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'from' => binary(),
       'userId' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'subject' => binary(),
       'attachments' := list(),
       'inboxId' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'createdAt' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'to' := list(),
       'bcc' := list(),
       'cc' := list(),
       'bodyMD5Hash' => binary()
     }.

encode(#{ 'id' := Id,
          'from' := From,
          'userId' := UserId,
          'subject' := Subject,
          'attachments' := Attachments,
          'inboxId' := InboxId,
          'createdAt' := CreatedAt,
          'to' := To,
          'bcc' := Bcc,
          'cc' := Cc,
          'bodyMD5Hash' := BodyMD5Hash
        }) ->
    #{ 'id' => Id,
       'from' => From,
       'userId' => UserId,
       'subject' => Subject,
       'attachments' => Attachments,
       'inboxId' => InboxId,
       'createdAt' => CreatedAt,
       'to' => To,
       'bcc' => Bcc,
       'cc' => Cc,
       'bodyMD5Hash' => BodyMD5Hash
     }.
