-module(maislurp-client-erlang_sent_email_projection).

-export([encode/1]).

-export_type([maislurp-client-erlang_sent_email_projection/0]).

-type maislurp-client-erlang_sent_email_projection() ::
    #{ 'id' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'from' => binary(),
       'userId' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'subject' => binary(),
       'to' := list(),
       'inboxId' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'attachments' := list(),
       'bodyMD5Hash' => binary(),
       'createdAt' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'bcc' := list(),
       'cc' := list(),
       'virtualSend' => boolean()
     }.

encode(#{ 'id' := Id,
          'from' := From,
          'userId' := UserId,
          'subject' := Subject,
          'to' := To,
          'inboxId' := InboxId,
          'attachments' := Attachments,
          'bodyMD5Hash' := BodyMD5Hash,
          'createdAt' := CreatedAt,
          'bcc' := Bcc,
          'cc' := Cc,
          'virtualSend' := VirtualSend
        }) ->
    #{ 'id' => Id,
       'from' => From,
       'userId' => UserId,
       'subject' => Subject,
       'to' => To,
       'inboxId' => InboxId,
       'attachments' => Attachments,
       'bodyMD5Hash' => BodyMD5Hash,
       'createdAt' => CreatedAt,
       'bcc' => Bcc,
       'cc' => Cc,
       'virtualSend' => VirtualSend
     }.
