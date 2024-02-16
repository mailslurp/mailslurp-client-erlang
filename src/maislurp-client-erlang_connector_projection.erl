-module(maislurp-client-erlang_connector_projection).

-export([encode/1]).

-export_type([maislurp-client-erlang_connector_projection/0]).

-type maislurp-client-erlang_connector_projection() ::
    #{ 'createdAt' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'userId' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'inboxId' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'syncEnabled' := boolean(),
       'connectorType' := binary(),
       'syncScheduleType' := binary(),
       'syncInterval' => integer(),
       'id' => maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid()
     }.

encode(#{ 'createdAt' := CreatedAt,
          'userId' := UserId,
          'inboxId' := InboxId,
          'syncEnabled' := SyncEnabled,
          'connectorType' := ConnectorType,
          'syncScheduleType' := SyncScheduleType,
          'syncInterval' := SyncInterval,
          'id' := Id
        }) ->
    #{ 'createdAt' => CreatedAt,
       'userId' => UserId,
       'inboxId' => InboxId,
       'syncEnabled' => SyncEnabled,
       'connectorType' => ConnectorType,
       'syncScheduleType' => SyncScheduleType,
       'syncInterval' => SyncInterval,
       'id' => Id
     }.
