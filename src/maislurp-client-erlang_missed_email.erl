-module(maislurp-client-erlang_missed_email).

-export([encode/1]).

-export_type([maislurp-client-erlang_missed_email/0]).

-type maislurp-client-erlang_missed_email() ::
    #{ 'attachmentCount' := integer(),
       'bcc' := list(),
       'bodyExcerpt' => binary(),
       'cc' := list(),
       'createdAt' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'from' => binary(),
       'id' => maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'inboxIds' := list(),
       'subject' => binary(),
       'to' := list(),
       'updatedAt' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'userId' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid()
     }.

encode(#{ 'attachmentCount' := AttachmentCount,
          'bcc' := Bcc,
          'bodyExcerpt' := BodyExcerpt,
          'cc' := Cc,
          'createdAt' := CreatedAt,
          'from' := From,
          'id' := Id,
          'inboxIds' := InboxIds,
          'subject' := Subject,
          'to' := To,
          'updatedAt' := UpdatedAt,
          'userId' := UserId
        }) ->
    #{ 'attachmentCount' => AttachmentCount,
       'bcc' => Bcc,
       'bodyExcerpt' => BodyExcerpt,
       'cc' => Cc,
       'createdAt' => CreatedAt,
       'from' => From,
       'id' => Id,
       'inboxIds' => InboxIds,
       'subject' => Subject,
       'to' => To,
       'updatedAt' => UpdatedAt,
       'userId' => UserId
     }.
