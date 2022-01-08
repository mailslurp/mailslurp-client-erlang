-module(maislurp-client-erlang_missed_email).

-export([encode/1]).

-export_type([maislurp-client-erlang_missed_email/0]).

-type maislurp-client-erlang_missed_email() ::
    #{ 'id' => maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'userId' => maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'subject' => binary(),
       'bodyExcerpt' => binary(),
       'attachmentCount' := integer(),
       'from' => binary(),
       'to' := list(),
       'cc' := list(),
       'bcc' := list(),
       'inboxIds' := list(),
       'createdAt' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'updatedAt' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time()
     }.

encode(#{ 'id' := Id,
          'userId' := UserId,
          'subject' := Subject,
          'bodyExcerpt' := BodyExcerpt,
          'attachmentCount' := AttachmentCount,
          'from' := From,
          'to' := To,
          'cc' := Cc,
          'bcc' := Bcc,
          'inboxIds' := InboxIds,
          'createdAt' := CreatedAt,
          'updatedAt' := UpdatedAt
        }) ->
    #{ 'id' => Id,
       'userId' => UserId,
       'subject' => Subject,
       'bodyExcerpt' => BodyExcerpt,
       'attachmentCount' => AttachmentCount,
       'from' => From,
       'to' => To,
       'cc' => Cc,
       'bcc' => Bcc,
       'inboxIds' => InboxIds,
       'createdAt' => CreatedAt,
       'updatedAt' => UpdatedAt
     }.
