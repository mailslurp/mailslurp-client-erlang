-module(maislurp-client-erlang_email_thread_projection).

-export([encode/1]).

-export_type([maislurp-client-erlang_email_thread_projection/0]).

-type maislurp-client-erlang_email_thread_projection() ::
    #{ 'subject' => binary(),
       'from' => binary(),
       'id' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'userId' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'inboxId' => maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'recipients' => maislurp-client-erlang_email_recipients_projection:maislurp-client-erlang_email_recipients_projection(),
       'to' := list(),
       'createdAt' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'cc' => list(),
       'bcc' => list(),
       'updatedAt' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'sender' => maislurp-client-erlang_sender_projection:maislurp-client-erlang_sender_projection(),
       'lastCreatedAt' => maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'hasAttachments' := boolean(),
       'lastSender' => maislurp-client-erlang_sender_projection:maislurp-client-erlang_sender_projection(),
       'lastFrom' => binary(),
       'unread' := boolean(),
       'messageCount' := integer(),
       'lastBodyExcerpt' => binary(),
       'lastTextExcerpt' => binary()
     }.

encode(#{ 'subject' := Subject,
          'from' := From,
          'id' := Id,
          'userId' := UserId,
          'inboxId' := InboxId,
          'recipients' := Recipients,
          'to' := To,
          'createdAt' := CreatedAt,
          'cc' := Cc,
          'bcc' := Bcc,
          'updatedAt' := UpdatedAt,
          'sender' := Sender,
          'lastCreatedAt' := LastCreatedAt,
          'hasAttachments' := HasAttachments,
          'lastSender' := LastSender,
          'lastFrom' := LastFrom,
          'unread' := Unread,
          'messageCount' := MessageCount,
          'lastBodyExcerpt' := LastBodyExcerpt,
          'lastTextExcerpt' := LastTextExcerpt
        }) ->
    #{ 'subject' => Subject,
       'from' => From,
       'id' => Id,
       'userId' => UserId,
       'inboxId' => InboxId,
       'recipients' => Recipients,
       'to' => To,
       'createdAt' => CreatedAt,
       'cc' => Cc,
       'bcc' => Bcc,
       'updatedAt' => UpdatedAt,
       'sender' => Sender,
       'lastCreatedAt' => LastCreatedAt,
       'hasAttachments' => HasAttachments,
       'lastSender' => LastSender,
       'lastFrom' => LastFrom,
       'unread' => Unread,
       'messageCount' => MessageCount,
       'lastBodyExcerpt' => LastBodyExcerpt,
       'lastTextExcerpt' => LastTextExcerpt
     }.
