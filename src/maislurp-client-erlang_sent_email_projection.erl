-module(maislurp-client-erlang_sent_email_projection).

-export([encode/1]).

-export_type([maislurp-client-erlang_sent_email_projection/0]).

-type maislurp-client-erlang_sent_email_projection() ::
    #{ 'id' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'from' => binary(),
       'userId' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'subject' => binary(),
       'createdAt' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'bodyMD5Hash' => binary(),
       'bcc' := list(),
       'cc' := list(),
       'virtualSend' := boolean(),
       'inboxId' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'attachments' := list(),
       'to' := list()
     }.

encode(#{ 'id' := Id,
          'from' := From,
          'userId' := UserId,
          'subject' := Subject,
          'createdAt' := CreatedAt,
          'bodyMD5Hash' := BodyMD5Hash,
          'bcc' := Bcc,
          'cc' := Cc,
          'virtualSend' := VirtualSend,
          'inboxId' := InboxId,
          'attachments' := Attachments,
          'to' := To
        }) ->
    #{ 'id' => Id,
       'from' => From,
       'userId' => UserId,
       'subject' => Subject,
       'createdAt' => CreatedAt,
       'bodyMD5Hash' => BodyMD5Hash,
       'bcc' => Bcc,
       'cc' => Cc,
       'virtualSend' => VirtualSend,
       'inboxId' => InboxId,
       'attachments' => Attachments,
       'to' => To
     }.
