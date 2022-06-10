-module(maislurp-client-erlang_alias_projection).

-export([encode/1]).

-export_type([maislurp-client-erlang_alias_projection/0]).

-type maislurp-client-erlang_alias_projection() ::
    #{ 'name' => binary(),
       'id' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'inboxId' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'userId' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'emailAddress' := binary(),
       'createdAt' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'useThreads' => boolean(),
       'updatedAt' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time()
     }.

encode(#{ 'name' := Name,
          'id' := Id,
          'inboxId' := InboxId,
          'userId' := UserId,
          'emailAddress' := EmailAddress,
          'createdAt' := CreatedAt,
          'useThreads' := UseThreads,
          'updatedAt' := UpdatedAt
        }) ->
    #{ 'name' => Name,
       'id' => Id,
       'inboxId' => InboxId,
       'userId' => UserId,
       'emailAddress' => EmailAddress,
       'createdAt' => CreatedAt,
       'useThreads' => UseThreads,
       'updatedAt' => UpdatedAt
     }.
