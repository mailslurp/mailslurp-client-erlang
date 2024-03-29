-module(maislurp-client-erlang_missed_email_dto).

-export([encode/1]).

-export_type([maislurp-client-erlang_missed_email_dto/0]).

-type maislurp-client-erlang_missed_email_dto() ::
    #{ 'id' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'userId' => maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'subject' => binary(),
       'bodyExcerpt' => binary(),
       'attachmentCount' := integer(),
       'from' => binary(),
       'rawUrl' => binary(),
       'rawKey' => binary(),
       'rawBucket' => binary(),
       'canRestore' => boolean(),
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
          'rawUrl' := RawUrl,
          'rawKey' := RawKey,
          'rawBucket' := RawBucket,
          'canRestore' := CanRestore,
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
       'rawUrl' => RawUrl,
       'rawKey' => RawKey,
       'rawBucket' => RawBucket,
       'canRestore' => CanRestore,
       'to' => To,
       'cc' => Cc,
       'bcc' => Bcc,
       'inboxIds' => InboxIds,
       'createdAt' => CreatedAt,
       'updatedAt' => UpdatedAt
     }.
