-module(maislurp-client-erlang_sent_email_projection).

-export([encode/1]).

-export_type([maislurp-client-erlang_sent_email_projection/0]).

-type maislurp-client-erlang_sent_email_projection() ::
    #{ 'inboxId' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'id' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'from' => binary(),
       'subject' => binary(),
       'userId' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'attachments' := list(),
       'createdAt' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'to' := list(),
       'bcc' := list(),
       'cc' := list(),
       'bodyMD5Hash' => binary(),
       'virtualSend' := boolean()
     }.

encode(#{ 'inboxId' := InboxId,
          'id' := Id,
          'from' := From,
          'subject' := Subject,
          'userId' := UserId,
          'attachments' := Attachments,
          'createdAt' := CreatedAt,
          'to' := To,
          'bcc' := Bcc,
          'cc' := Cc,
          'bodyMD5Hash' := BodyMD5Hash,
          'virtualSend' := VirtualSend
        }) ->
    #{ 'inboxId' => InboxId,
       'id' => Id,
       'from' => From,
       'subject' => Subject,
       'userId' => UserId,
       'attachments' => Attachments,
       'createdAt' => CreatedAt,
       'to' => To,
       'bcc' => Bcc,
       'cc' => Cc,
       'bodyMD5Hash' => BodyMD5Hash,
       'virtualSend' => VirtualSend
     }.
