-module(maislurp-client-erlang_sent_email_projection).

-export([encode/1]).

-export_type([maislurp-client-erlang_sent_email_projection/0]).

-type maislurp-client-erlang_sent_email_projection() ::
    #{ 'createdAt' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'id' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'subject' => binary(),
       'from' => binary(),
       'attachments' := list(),
       'userId' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'inboxId' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'to' := list(),
       'bcc' := list(),
       'cc' := list(),
       'bodyMD5Hash' => binary(),
       'virtualSend' := boolean()
     }.

encode(#{ 'createdAt' := CreatedAt,
          'id' := Id,
          'subject' := Subject,
          'from' := From,
          'attachments' := Attachments,
          'userId' := UserId,
          'inboxId' := InboxId,
          'to' := To,
          'bcc' := Bcc,
          'cc' := Cc,
          'bodyMD5Hash' := BodyMD5Hash,
          'virtualSend' := VirtualSend
        }) ->
    #{ 'createdAt' => CreatedAt,
       'id' => Id,
       'subject' => Subject,
       'from' => From,
       'attachments' => Attachments,
       'userId' => UserId,
       'inboxId' => InboxId,
       'to' => To,
       'bcc' => Bcc,
       'cc' => Cc,
       'bodyMD5Hash' => BodyMD5Hash,
       'virtualSend' => VirtualSend
     }.
