-module(maislurp-client-erlang_email_thread_projection).

-export([encode/1]).

-export_type([maislurp-client-erlang_email_thread_projection/0]).

-type maislurp-client-erlang_email_thread_projection() ::
    #{ 'subject' => binary(),
       'updatedAt' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'userId' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'inboxId' => maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'createdAt' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'to' := list(),
       'cc' => list(),
       'bcc' => list(),
       'sender' => maislurp-client-erlang_sender_projection:maislurp-client-erlang_sender_projection(),
       'recipients' => maislurp-client-erlang_email_recipients_projection:maislurp-client-erlang_email_recipients_projection(),
       'hasAttachments' := boolean(),
       'unread' := boolean(),
       'messageCount' := integer(),
       'lastBodyExcerpt' => binary(),
       'lastTextExcerpt' => binary(),
       'lastCreatedAt' => maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'lastFrom' => binary(),
       'lastSender' => maislurp-client-erlang_sender_projection:maislurp-client-erlang_sender_projection(),
       'id' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'from' => binary()
     }.

encode(#{ 'subject' := Subject,
          'updatedAt' := UpdatedAt,
          'userId' := UserId,
          'inboxId' := InboxId,
          'createdAt' := CreatedAt,
          'to' := To,
          'cc' := Cc,
          'bcc' := Bcc,
          'sender' := Sender,
          'recipients' := Recipients,
          'hasAttachments' := HasAttachments,
          'unread' := Unread,
          'messageCount' := MessageCount,
          'lastBodyExcerpt' := LastBodyExcerpt,
          'lastTextExcerpt' := LastTextExcerpt,
          'lastCreatedAt' := LastCreatedAt,
          'lastFrom' := LastFrom,
          'lastSender' := LastSender,
          'id' := Id,
          'from' := From
        }) ->
    #{ 'subject' => Subject,
       'updatedAt' => UpdatedAt,
       'userId' => UserId,
       'inboxId' => InboxId,
       'createdAt' => CreatedAt,
       'to' => To,
       'cc' => Cc,
       'bcc' => Bcc,
       'sender' => Sender,
       'recipients' => Recipients,
       'hasAttachments' => HasAttachments,
       'unread' => Unread,
       'messageCount' => MessageCount,
       'lastBodyExcerpt' => LastBodyExcerpt,
       'lastTextExcerpt' => LastTextExcerpt,
       'lastCreatedAt' => LastCreatedAt,
       'lastFrom' => LastFrom,
       'lastSender' => LastSender,
       'id' => Id,
       'from' => From
     }.
