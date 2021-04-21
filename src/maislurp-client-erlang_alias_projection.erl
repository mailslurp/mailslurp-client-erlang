-module(maislurp-client-erlang_alias_projection).

-export([encode/1]).

-export_type([maislurp-client-erlang_alias_projection/0]).

-type maislurp-client-erlang_alias_projection() ::
    #{ 'createdAt' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'emailAddress' := binary(),
       'id' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'inboxId' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'name' => binary(),
       'updatedAt' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'useThreads' => boolean(),
       'userId' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid()
     }.

encode(#{ 'createdAt' := CreatedAt,
          'emailAddress' := EmailAddress,
          'id' := Id,
          'inboxId' := InboxId,
          'name' := Name,
          'updatedAt' := UpdatedAt,
          'useThreads' := UseThreads,
          'userId' := UserId
        }) ->
    #{ 'createdAt' => CreatedAt,
       'emailAddress' => EmailAddress,
       'id' => Id,
       'inboxId' => InboxId,
       'name' => Name,
       'updatedAt' => UpdatedAt,
       'useThreads' => UseThreads,
       'userId' => UserId
     }.
