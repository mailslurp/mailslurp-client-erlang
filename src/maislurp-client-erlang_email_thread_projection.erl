-module(maislurp-client-erlang_email_thread_projection).

-export([encode/1]).

-export_type([maislurp-client-erlang_email_thread_projection/0]).

-type maislurp-client-erlang_email_thread_projection() ::
    #{ 'sender' => maislurp-client-erlang_sender_projection:maislurp-client-erlang_sender_projection(),
       'recipients' => maislurp-client-erlang_email_recipients_projection:maislurp-client-erlang_email_recipients_projection(),
       'userId' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'inboxId' => maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'updatedAt' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'createdAt' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'to' := list(),
       'cc' => list(),
       'bcc' => list(),
       'hasAttachments' := boolean(),
       'lastBodyExcerpt' => binary(),
       'lastTextExcerpt' => binary(),
       'lastCreatedAt' => maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'lastFrom' => binary(),
       'lastSender' => maislurp-client-erlang_sender_projection:maislurp-client-erlang_sender_projection(),
       'messageCount' := integer(),
       'unread' := boolean(),
       'subject' => binary(),
       'id' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'from' => binary()
     }.

encode(#{ 'sender' := Sender,
          'recipients' := Recipients,
          'userId' := UserId,
          'inboxId' := InboxId,
          'updatedAt' := UpdatedAt,
          'createdAt' := CreatedAt,
          'to' := To,
          'cc' := Cc,
          'bcc' := Bcc,
          'hasAttachments' := HasAttachments,
          'lastBodyExcerpt' := LastBodyExcerpt,
          'lastTextExcerpt' := LastTextExcerpt,
          'lastCreatedAt' := LastCreatedAt,
          'lastFrom' := LastFrom,
          'lastSender' := LastSender,
          'messageCount' := MessageCount,
          'unread' := Unread,
          'subject' := Subject,
          'id' := Id,
          'from' := From
        }) ->
    #{ 'sender' => Sender,
       'recipients' => Recipients,
       'userId' => UserId,
       'inboxId' => InboxId,
       'updatedAt' => UpdatedAt,
       'createdAt' => CreatedAt,
       'to' => To,
       'cc' => Cc,
       'bcc' => Bcc,
       'hasAttachments' => HasAttachments,
       'lastBodyExcerpt' => LastBodyExcerpt,
       'lastTextExcerpt' => LastTextExcerpt,
       'lastCreatedAt' => LastCreatedAt,
       'lastFrom' => LastFrom,
       'lastSender' => LastSender,
       'messageCount' => MessageCount,
       'unread' => Unread,
       'subject' => Subject,
       'id' => Id,
       'from' => From
     }.
