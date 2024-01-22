-module(maislurp-client-erlang_sent_email_projection).

-export([encode/1]).

-export_type([maislurp-client-erlang_sent_email_projection/0]).

-type maislurp-client-erlang_sent_email_projection() ::
    #{ 'subject' => binary(),
       'id' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'from' => binary(),
       'userId' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'attachments' := list(),
       'inboxId' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'to' := list(),
       'bcc' := list(),
       'cc' := list(),
       'createdAt' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'bodyMD5Hash' => binary(),
       'virtualSend' := boolean()
     }.

encode(#{ 'subject' := Subject,
          'id' := Id,
          'from' := From,
          'userId' := UserId,
          'attachments' := Attachments,
          'inboxId' := InboxId,
          'to' := To,
          'bcc' := Bcc,
          'cc' := Cc,
          'createdAt' := CreatedAt,
          'bodyMD5Hash' := BodyMD5Hash,
          'virtualSend' := VirtualSend
        }) ->
    #{ 'subject' => Subject,
       'id' => Id,
       'from' => From,
       'userId' => UserId,
       'attachments' => Attachments,
       'inboxId' => InboxId,
       'to' => To,
       'bcc' => Bcc,
       'cc' => Cc,
       'createdAt' => CreatedAt,
       'bodyMD5Hash' => BodyMD5Hash,
       'virtualSend' => VirtualSend
     }.
