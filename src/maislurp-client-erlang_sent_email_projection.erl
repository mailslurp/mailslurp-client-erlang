-module(maislurp-client-erlang_sent_email_projection).

-export([encode/1]).

-export_type([maislurp-client-erlang_sent_email_projection/0]).

-type maislurp-client-erlang_sent_email_projection() ::
    #{ 'subject' => binary(),
       'id' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'bodyMD5Hash' => binary(),
       'from' => binary(),
       'inboxId' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'userId' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'attachments' := list(),
       'to' := list(),
       'bcc' := list(),
       'cc' := list(),
       'createdAt' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'virtualSend' := boolean()
     }.

encode(#{ 'subject' := Subject,
          'id' := Id,
          'bodyMD5Hash' := BodyMD5Hash,
          'from' := From,
          'inboxId' := InboxId,
          'userId' := UserId,
          'attachments' := Attachments,
          'to' := To,
          'bcc' := Bcc,
          'cc' := Cc,
          'createdAt' := CreatedAt,
          'virtualSend' := VirtualSend
        }) ->
    #{ 'subject' => Subject,
       'id' => Id,
       'bodyMD5Hash' => BodyMD5Hash,
       'from' => From,
       'inboxId' => InboxId,
       'userId' => UserId,
       'attachments' => Attachments,
       'to' => To,
       'bcc' => Bcc,
       'cc' => Cc,
       'createdAt' => CreatedAt,
       'virtualSend' => VirtualSend
     }.
