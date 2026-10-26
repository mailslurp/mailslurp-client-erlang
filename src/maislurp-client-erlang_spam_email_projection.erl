-module(maislurp-client-erlang_spam_email_projection).

-export([encode/1]).

-export_type([maislurp-client-erlang_spam_email_projection/0]).

-type maislurp-client-erlang_spam_email_projection() ::
    #{ 'from' => binary(),
       'id' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'userId' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'inboxId' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'to' := binary(),
       'createdAt' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'subjectSnippet' => binary()
     }.

encode(#{ 'from' := From,
          'id' := Id,
          'userId' := UserId,
          'inboxId' := InboxId,
          'to' := To,
          'createdAt' := CreatedAt,
          'subjectSnippet' := SubjectSnippet
        }) ->
    #{ 'from' => From,
       'id' => Id,
       'userId' => UserId,
       'inboxId' => InboxId,
       'to' => To,
       'createdAt' => CreatedAt,
       'subjectSnippet' => SubjectSnippet
     }.
