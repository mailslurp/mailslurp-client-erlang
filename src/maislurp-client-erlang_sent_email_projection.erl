-module(maislurp-client-erlang_sent_email_projection).

-export([encode/1]).

-export_type([maislurp-client-erlang_sent_email_projection/0]).

-type maislurp-client-erlang_sent_email_projection() ::
    #{ 'id' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'from' => binary(),
       'userId' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'subject' => binary(),
       'inboxId' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'bodyMD5Hash' => binary(),
       'bcc' := list(),
       'cc' := list(),
       'virtualSend' := boolean(),
       'attachments' := list(),
       'createdAt' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'to' := list()
     }.

encode(#{ 'id' := Id,
          'from' := From,
          'userId' := UserId,
          'subject' := Subject,
          'inboxId' := InboxId,
          'bodyMD5Hash' := BodyMD5Hash,
          'bcc' := Bcc,
          'cc' := Cc,
          'virtualSend' := VirtualSend,
          'attachments' := Attachments,
          'createdAt' := CreatedAt,
          'to' := To
        }) ->
    #{ 'id' => Id,
       'from' => From,
       'userId' => UserId,
       'subject' => Subject,
       'inboxId' => InboxId,
       'bodyMD5Hash' => BodyMD5Hash,
       'bcc' => Bcc,
       'cc' => Cc,
       'virtualSend' => VirtualSend,
       'attachments' => Attachments,
       'createdAt' => CreatedAt,
       'to' => To
     }.
