-module(maislurp-client-erlang_connector_sync_settings_dto).

-export([encode/1]).

-export_type([maislurp-client-erlang_connector_sync_settings_dto/0]).

-type maislurp-client-erlang_connector_sync_settings_dto() ::
    #{ 'id' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'userId' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'connectorId' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'syncEnabled' := boolean(),
       'syncScheduleType' => binary(),
       'syncInterval' => integer()
     }.

encode(#{ 'id' := Id,
          'userId' := UserId,
          'connectorId' := ConnectorId,
          'syncEnabled' := SyncEnabled,
          'syncScheduleType' := SyncScheduleType,
          'syncInterval' := SyncInterval
        }) ->
    #{ 'id' => Id,
       'userId' => UserId,
       'connectorId' => ConnectorId,
       'syncEnabled' => SyncEnabled,
       'syncScheduleType' => SyncScheduleType,
       'syncInterval' => SyncInterval
     }.
