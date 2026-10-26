-module(maislurp-client-erlang_connector_projection).

-export([encode/1]).

-export_type([maislurp-client-erlang_connector_projection/0]).

-type maislurp-client-erlang_connector_projection() ::
    #{ 'enabled' => boolean(),
       'name' => binary(),
       'id' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'userId' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'inboxId' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'createdAt' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'emailAddress' => binary()
     }.

encode(#{ 'enabled' := Enabled,
          'name' := Name,
          'id' := Id,
          'userId' := UserId,
          'inboxId' := InboxId,
          'createdAt' := CreatedAt,
          'emailAddress' := EmailAddress
        }) ->
    #{ 'enabled' => Enabled,
       'name' => Name,
       'id' => Id,
       'userId' => UserId,
       'inboxId' => InboxId,
       'createdAt' => CreatedAt,
       'emailAddress' => EmailAddress
     }.
