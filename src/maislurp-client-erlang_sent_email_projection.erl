-module(maislurp-client-erlang_sent_email_projection).

-export([encode/1]).

-export_type([maislurp-client-erlang_sent_email_projection/0]).

-type maislurp-client-erlang_sent_email_projection() ::
    #{ 'id' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'from' => binary(),
       'userId' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'subject' => binary(),
       'bodyMD5Hash' => binary(),
       'bcc' := list(),
       'cc' := list(),
       'inboxId' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'attachments' := list(),
       'to' := list(),
       'createdAt' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time()
     }.

encode(#{ 'id' := Id,
          'from' := From,
          'userId' := UserId,
          'subject' := Subject,
          'bodyMD5Hash' := BodyMD5Hash,
          'bcc' := Bcc,
          'cc' := Cc,
          'inboxId' := InboxId,
          'attachments' := Attachments,
          'to' := To,
          'createdAt' := CreatedAt
        }) ->
    #{ 'id' => Id,
       'from' => From,
       'userId' => UserId,
       'subject' => Subject,
       'bodyMD5Hash' => BodyMD5Hash,
       'bcc' => Bcc,
       'cc' => Cc,
       'inboxId' => InboxId,
       'attachments' => Attachments,
       'to' => To,
       'createdAt' => CreatedAt
     }.
