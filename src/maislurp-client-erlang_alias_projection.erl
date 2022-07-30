-module(maislurp-client-erlang_alias_projection).

-export([encode/1]).

-export_type([maislurp-client-erlang_alias_projection/0]).

-type maislurp-client-erlang_alias_projection() ::
    #{ 'name' => binary(),
       'id' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'inboxId' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'emailAddress' := binary(),
       'userId' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'createdAt' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'updatedAt' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'useThreads' => boolean()
     }.

encode(#{ 'name' := Name,
          'id' := Id,
          'inboxId' := InboxId,
          'emailAddress' := EmailAddress,
          'userId' := UserId,
          'createdAt' := CreatedAt,
          'updatedAt' := UpdatedAt,
          'useThreads' := UseThreads
        }) ->
    #{ 'name' => Name,
       'id' => Id,
       'inboxId' => InboxId,
       'emailAddress' => EmailAddress,
       'userId' => UserId,
       'createdAt' => CreatedAt,
       'updatedAt' => UpdatedAt,
       'useThreads' => UseThreads
     }.
