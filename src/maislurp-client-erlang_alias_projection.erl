-module(maislurp-client-erlang_alias_projection).

-export([encode/1]).

-export_type([maislurp-client-erlang_alias_projection/0]).

-type maislurp-client-erlang_alias_projection() ::
    #{ 'createdAt' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'updatedAt' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'emailAddress' := binary(),
       'userId' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'inboxId' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'useThreads' => boolean(),
       'name' => binary(),
       'id' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid()
     }.

encode(#{ 'createdAt' := CreatedAt,
          'updatedAt' := UpdatedAt,
          'emailAddress' := EmailAddress,
          'userId' := UserId,
          'inboxId' := InboxId,
          'useThreads' := UseThreads,
          'name' := Name,
          'id' := Id
        }) ->
    #{ 'createdAt' => CreatedAt,
       'updatedAt' => UpdatedAt,
       'emailAddress' => EmailAddress,
       'userId' => UserId,
       'inboxId' => InboxId,
       'useThreads' => UseThreads,
       'name' => Name,
       'id' => Id
     }.
