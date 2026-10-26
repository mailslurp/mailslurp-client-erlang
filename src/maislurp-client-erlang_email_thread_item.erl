-module(maislurp-client-erlang_email_thread_item).

-export([encode/1]).

-export_type([maislurp-client-erlang_email_thread_item/0]).

-type maislurp-client-erlang_email_thread_item() ::
    #{ 'itemType' := binary(),
       'entityId' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'bodyExcerpt' => binary(),
       'textExcerpt' => binary(),
       'subject' => binary(),
       'to' := list(),
       'from' => binary(),
       'bcc' => list(),
       'cc' => list(),
       'attachments' => list(),
       'createdAt' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'read' := boolean(),
       'inReplyTo' => binary(),
       'messageId' => binary(),
       'threadId' => maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'sender' => maislurp-client-erlang_sender:maislurp-client-erlang_sender(),
       'recipients' => maislurp-client-erlang_email_recipients:maislurp-client-erlang_email_recipients()
     }.

encode(#{ 'itemType' := ItemType,
          'entityId' := EntityId,
          'bodyExcerpt' := BodyExcerpt,
          'textExcerpt' := TextExcerpt,
          'subject' := Subject,
          'to' := To,
          'from' := From,
          'bcc' := Bcc,
          'cc' := Cc,
          'attachments' := Attachments,
          'createdAt' := CreatedAt,
          'read' := Read,
          'inReplyTo' := InReplyTo,
          'messageId' := MessageId,
          'threadId' := ThreadId,
          'sender' := Sender,
          'recipients' := Recipients
        }) ->
    #{ 'itemType' => ItemType,
       'entityId' => EntityId,
       'bodyExcerpt' => BodyExcerpt,
       'textExcerpt' => TextExcerpt,
       'subject' => Subject,
       'to' => To,
       'from' => From,
       'bcc' => Bcc,
       'cc' => Cc,
       'attachments' => Attachments,
       'createdAt' => CreatedAt,
       'read' => Read,
       'inReplyTo' => InReplyTo,
       'messageId' => MessageId,
       'threadId' => ThreadId,
       'sender' => Sender,
       'recipients' => Recipients
     }.
