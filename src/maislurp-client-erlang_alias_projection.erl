-module(maislurp-client-erlang_alias_projection).

-export([encode/1]).

-export_type([maislurp-client-erlang_alias_projection/0]).

-type maislurp-client-erlang_alias_projection() ::
    #{ 'inboxId' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'userId' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'emailAddress' := binary(),
       'updatedAt' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'createdAt' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'useThreads' => boolean(),
       'name' => binary(),
       'id' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid()
     }.

encode(#{ 'inboxId' := InboxId,
          'userId' := UserId,
          'emailAddress' := EmailAddress,
          'updatedAt' := UpdatedAt,
          'createdAt' := CreatedAt,
          'useThreads' := UseThreads,
          'name' := Name,
          'id' := Id
        }) ->
    #{ 'inboxId' => InboxId,
       'userId' => UserId,
       'emailAddress' => EmailAddress,
       'updatedAt' => UpdatedAt,
       'createdAt' => CreatedAt,
       'useThreads' => UseThreads,
       'name' => Name,
       'id' => Id
     }.
