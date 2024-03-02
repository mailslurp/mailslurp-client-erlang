-module(maislurp-client-erlang_sent_email_projection).

-export([encode/1]).

-export_type([maislurp-client-erlang_sent_email_projection/0]).

-type maislurp-client-erlang_sent_email_projection() ::
    #{ 'createdAt' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'id' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'bodyMD5Hash' => binary(),
       'userId' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'from' => binary(),
       'subject' => binary(),
       'inboxId' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'attachments' := list(),
       'to' := list(),
       'bcc' := list(),
       'cc' := list(),
       'virtualSend' := boolean()
     }.

encode(#{ 'createdAt' := CreatedAt,
          'id' := Id,
          'bodyMD5Hash' := BodyMD5Hash,
          'userId' := UserId,
          'from' := From,
          'subject' := Subject,
          'inboxId' := InboxId,
          'attachments' := Attachments,
          'to' := To,
          'bcc' := Bcc,
          'cc' := Cc,
          'virtualSend' := VirtualSend
        }) ->
    #{ 'createdAt' => CreatedAt,
       'id' => Id,
       'bodyMD5Hash' => BodyMD5Hash,
       'userId' => UserId,
       'from' => From,
       'subject' => Subject,
       'inboxId' => InboxId,
       'attachments' => Attachments,
       'to' => To,
       'bcc' => Bcc,
       'cc' => Cc,
       'virtualSend' => VirtualSend
     }.
