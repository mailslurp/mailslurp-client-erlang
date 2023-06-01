-module(maislurp-client-erlang_connector_projection).

-export([encode/1]).

-export_type([maislurp-client-erlang_connector_projection/0]).

-type maislurp-client-erlang_connector_projection() ::
    #{ 'id' => maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'inboxId' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'userId' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'createdAt' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'syncEnabled' := boolean(),
       'connectorType' := binary(),
       'syncScheduleType' := binary(),
       'syncInterval' => integer()
     }.

encode(#{ 'id' := Id,
          'inboxId' := InboxId,
          'userId' := UserId,
          'createdAt' := CreatedAt,
          'syncEnabled' := SyncEnabled,
          'connectorType' := ConnectorType,
          'syncScheduleType' := SyncScheduleType,
          'syncInterval' := SyncInterval
        }) ->
    #{ 'id' => Id,
       'inboxId' => InboxId,
       'userId' => UserId,
       'createdAt' => CreatedAt,
       'syncEnabled' => SyncEnabled,
       'connectorType' => ConnectorType,
       'syncScheduleType' => SyncScheduleType,
       'syncInterval' => SyncInterval
     }.
