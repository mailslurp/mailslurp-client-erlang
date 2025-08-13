-module(maislurp-client-erlang_connector_projection).

-export([encode/1]).

-export_type([maislurp-client-erlang_connector_projection/0]).

-type maislurp-client-erlang_connector_projection() ::
    #{ 'enabled' => boolean(),
       'userId' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'inboxId' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'emailAddress' => binary(),
       'createdAt' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'name' => binary(),
       'id' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid()
     }.

encode(#{ 'enabled' := Enabled,
          'userId' := UserId,
          'inboxId' := InboxId,
          'emailAddress' := EmailAddress,
          'createdAt' := CreatedAt,
          'name' := Name,
          'id' := Id
        }) ->
    #{ 'enabled' => Enabled,
       'userId' => UserId,
       'inboxId' => InboxId,
       'emailAddress' => EmailAddress,
       'createdAt' => CreatedAt,
       'name' => Name,
       'id' => Id
     }.
