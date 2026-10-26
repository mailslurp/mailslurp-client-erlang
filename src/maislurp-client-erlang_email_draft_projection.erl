-module(maislurp-client-erlang_email_draft_projection).

-export([encode/1]).

-export_type([maislurp-client-erlang_email_draft_projection/0]).

-type maislurp-client-erlang_email_draft_projection() ::
    #{ 'subject' => binary(),
       'from' => binary(),
       'id' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'userId' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'inboxId' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'recipients' => maislurp-client-erlang_email_recipients:maislurp-client-erlang_email_recipients(),
       'attachments' => list(),
       'textExcerpt' => binary(),
       'bodyExcerpt' => binary(),
       'to' => list(),
       'createdAt' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'cc' => list(),
       'bcc' => list(),
       'updatedAt' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'sender' => maislurp-client-erlang_sender:maislurp-client-erlang_sender()
     }.

encode(#{ 'subject' := Subject,
          'from' := From,
          'id' := Id,
          'userId' := UserId,
          'inboxId' := InboxId,
          'recipients' := Recipients,
          'attachments' := Attachments,
          'textExcerpt' := TextExcerpt,
          'bodyExcerpt' := BodyExcerpt,
          'to' := To,
          'createdAt' := CreatedAt,
          'cc' := Cc,
          'bcc' := Bcc,
          'updatedAt' := UpdatedAt,
          'sender' := Sender
        }) ->
    #{ 'subject' => Subject,
       'from' => From,
       'id' => Id,
       'userId' => UserId,
       'inboxId' => InboxId,
       'recipients' => Recipients,
       'attachments' => Attachments,
       'textExcerpt' => TextExcerpt,
       'bodyExcerpt' => BodyExcerpt,
       'to' => To,
       'createdAt' => CreatedAt,
       'cc' => Cc,
       'bcc' => Bcc,
       'updatedAt' => UpdatedAt,
       'sender' => Sender
     }.
