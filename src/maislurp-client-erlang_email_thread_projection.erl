-module(maislurp-client-erlang_email_thread_projection).

-export([encode/1]).

-export_type([maislurp-client-erlang_email_thread_projection/0]).

-type maislurp-client-erlang_email_thread_projection() ::
    #{ 'recipients' => maislurp-client-erlang_email_recipients_projection:maislurp-client-erlang_email_recipients_projection(),
       'sender' => maislurp-client-erlang_sender_projection:maislurp-client-erlang_sender_projection(),
       'inboxId' => maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'userId' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'updatedAt' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'createdAt' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'to' := list(),
       'cc' => list(),
       'bcc' => list(),
       'hasAttachments' := boolean(),
       'unread' := boolean(),
       'messageCount' := integer(),
       'lastBodyExcerpt' => binary(),
       'lastTextExcerpt' => binary(),
       'lastCreatedAt' => maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'lastFrom' => binary(),
       'lastSender' => maislurp-client-erlang_sender_projection:maislurp-client-erlang_sender_projection(),
       'subject' => binary(),
       'id' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'from' => binary()
     }.

encode(#{ 'recipients' := Recipients,
          'sender' := Sender,
          'inboxId' := InboxId,
          'userId' := UserId,
          'updatedAt' := UpdatedAt,
          'createdAt' := CreatedAt,
          'to' := To,
          'cc' := Cc,
          'bcc' := Bcc,
          'hasAttachments' := HasAttachments,
          'unread' := Unread,
          'messageCount' := MessageCount,
          'lastBodyExcerpt' := LastBodyExcerpt,
          'lastTextExcerpt' := LastTextExcerpt,
          'lastCreatedAt' := LastCreatedAt,
          'lastFrom' := LastFrom,
          'lastSender' := LastSender,
          'subject' := Subject,
          'id' := Id,
          'from' := From
        }) ->
    #{ 'recipients' => Recipients,
       'sender' => Sender,
       'inboxId' => InboxId,
       'userId' => UserId,
       'updatedAt' => UpdatedAt,
       'createdAt' => CreatedAt,
       'to' => To,
       'cc' => Cc,
       'bcc' => Bcc,
       'hasAttachments' => HasAttachments,
       'unread' => Unread,
       'messageCount' => MessageCount,
       'lastBodyExcerpt' => LastBodyExcerpt,
       'lastTextExcerpt' => LastTextExcerpt,
       'lastCreatedAt' => LastCreatedAt,
       'lastFrom' => LastFrom,
       'lastSender' => LastSender,
       'subject' => Subject,
       'id' => Id,
       'from' => From
     }.
