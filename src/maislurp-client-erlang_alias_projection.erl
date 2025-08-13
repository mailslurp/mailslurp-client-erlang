-module(maislurp-client-erlang_alias_projection).

-export([encode/1]).

-export_type([maislurp-client-erlang_alias_projection/0]).

-type maislurp-client-erlang_alias_projection() ::
    #{ 'userId' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'inboxId' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'emailAddress' := binary(),
       'createdAt' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'updatedAt' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'useThreads' => boolean(),
       'name' => binary(),
       'id' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid()
     }.

encode(#{ 'userId' := UserId,
          'inboxId' := InboxId,
          'emailAddress' := EmailAddress,
          'createdAt' := CreatedAt,
          'updatedAt' := UpdatedAt,
          'useThreads' := UseThreads,
          'name' := Name,
          'id' := Id
        }) ->
    #{ 'userId' => UserId,
       'inboxId' => InboxId,
       'emailAddress' => EmailAddress,
       'createdAt' => CreatedAt,
       'updatedAt' => UpdatedAt,
       'useThreads' => UseThreads,
       'name' => Name,
       'id' => Id
     }.
