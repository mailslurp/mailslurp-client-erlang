-module(maislurp-client-erlang_email_preview).

-export([encode/1]).

-export_type([maislurp-client-erlang_email_preview/0]).

-type maislurp-client-erlang_email_preview() ::
    #{ 'id' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'inboxId' => maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'domainId' => maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'subject' => binary(),
       'to' := list(),
       'from' => binary(),
       'bcc' => list(),
       'cc' => list(),
       'createdAt' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'read' := boolean(),
       'attachments' => list(),
       'threadId' => maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'messageId' => binary(),
       'inReplyTo' => binary(),
       'sender' => maislurp-client-erlang_sender:maislurp-client-erlang_sender(),
       'recipients' => maislurp-client-erlang_email_recipients:maislurp-client-erlang_email_recipients(),
       'favourite' => boolean(),
       'bodyPartContentTypes' => list(),
       'plusAddress' => maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'sizeBytes' => integer()
     }.

encode(#{ 'id' := Id,
          'inboxId' := InboxId,
          'domainId' := DomainId,
          'subject' := Subject,
          'to' := To,
          'from' := From,
          'bcc' := Bcc,
          'cc' := Cc,
          'createdAt' := CreatedAt,
          'read' := Read,
          'attachments' := Attachments,
          'threadId' := ThreadId,
          'messageId' := MessageId,
          'inReplyTo' := InReplyTo,
          'sender' := Sender,
          'recipients' := Recipients,
          'favourite' := Favourite,
          'bodyPartContentTypes' := BodyPartContentTypes,
          'plusAddress' := PlusAddress,
          'sizeBytes' := SizeBytes
        }) ->
    #{ 'id' => Id,
       'inboxId' => InboxId,
       'domainId' => DomainId,
       'subject' => Subject,
       'to' => To,
       'from' => From,
       'bcc' => Bcc,
       'cc' => Cc,
       'createdAt' => CreatedAt,
       'read' => Read,
       'attachments' => Attachments,
       'threadId' => ThreadId,
       'messageId' => MessageId,
       'inReplyTo' => InReplyTo,
       'sender' => Sender,
       'recipients' => Recipients,
       'favourite' => Favourite,
       'bodyPartContentTypes' => BodyPartContentTypes,
       'plusAddress' => PlusAddress,
       'sizeBytes' => SizeBytes
     }.
