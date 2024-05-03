-module(maislurp-client-erlang_sent_email_projection).

-export([encode/1]).

-export_type([maislurp-client-erlang_sent_email_projection/0]).

-type maislurp-client-erlang_sent_email_projection() ::
    #{ 'id' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'from' => binary(),
       'subject' => binary(),
       'attachments' := list(),
       'userId' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'inboxId' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'to' := list(),
       'bcc' := list(),
       'cc' := list(),
       'createdAt' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'bodyMD5Hash' => binary(),
       'virtualSend' := boolean()
     }.

encode(#{ 'id' := Id,
          'from' := From,
          'subject' := Subject,
          'attachments' := Attachments,
          'userId' := UserId,
          'inboxId' := InboxId,
          'to' := To,
          'bcc' := Bcc,
          'cc' := Cc,
          'createdAt' := CreatedAt,
          'bodyMD5Hash' := BodyMD5Hash,
          'virtualSend' := VirtualSend
        }) ->
    #{ 'id' => Id,
       'from' => From,
       'subject' => Subject,
       'attachments' => Attachments,
       'userId' => UserId,
       'inboxId' => InboxId,
       'to' => To,
       'bcc' => Bcc,
       'cc' => Cc,
       'createdAt' => CreatedAt,
       'bodyMD5Hash' => BodyMD5Hash,
       'virtualSend' => VirtualSend
     }.
