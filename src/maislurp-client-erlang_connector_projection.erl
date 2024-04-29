-module(maislurp-client-erlang_connector_projection).

-export([encode/1]).

-export_type([maislurp-client-erlang_connector_projection/0]).

-type maislurp-client-erlang_connector_projection() ::
    #{ 'createdAt' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'enabled' => boolean(),
       'inboxId' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'userId' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'emailAddress' => binary(),
       'syncEnabled' => boolean(),
       'syncScheduleType' := binary(),
       'syncInterval' => integer(),
       'name' => binary(),
       'id' => maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid()
     }.

encode(#{ 'createdAt' := CreatedAt,
          'enabled' := Enabled,
          'inboxId' := InboxId,
          'userId' := UserId,
          'emailAddress' := EmailAddress,
          'syncEnabled' := SyncEnabled,
          'syncScheduleType' := SyncScheduleType,
          'syncInterval' := SyncInterval,
          'name' := Name,
          'id' := Id
        }) ->
    #{ 'createdAt' => CreatedAt,
       'enabled' => Enabled,
       'inboxId' => InboxId,
       'userId' => UserId,
       'emailAddress' => EmailAddress,
       'syncEnabled' => SyncEnabled,
       'syncScheduleType' => SyncScheduleType,
       'syncInterval' => SyncInterval,
       'name' => Name,
       'id' => Id
     }.
