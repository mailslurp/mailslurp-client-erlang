-module(maislurp-client-erlang_sent_email_projection).

-export([encode/1]).

-export_type([maislurp-client-erlang_sent_email_projection/0]).

-type maislurp-client-erlang_sent_email_projection() ::
    #{ 'id' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'from' => binary(),
       'userId' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'subject' => binary(),
       'createdAt' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'inboxId' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'attachments' := list(),
       'to' := list(),
       'bcc' := list(),
       'cc' := list(),
       'bodyMD5Hash' => binary(),
       'virtualSend' => boolean()
     }.

encode(#{ 'id' := Id,
          'from' := From,
          'userId' := UserId,
          'subject' := Subject,
          'createdAt' := CreatedAt,
          'inboxId' := InboxId,
          'attachments' := Attachments,
          'to' := To,
          'bcc' := Bcc,
          'cc' := Cc,
          'bodyMD5Hash' := BodyMD5Hash,
          'virtualSend' := VirtualSend
        }) ->
    #{ 'id' => Id,
       'from' => From,
       'userId' => UserId,
       'subject' => Subject,
       'createdAt' => CreatedAt,
       'inboxId' => InboxId,
       'attachments' => Attachments,
       'to' => To,
       'bcc' => Bcc,
       'cc' => Cc,
       'bodyMD5Hash' => BodyMD5Hash,
       'virtualSend' => VirtualSend
     }.
