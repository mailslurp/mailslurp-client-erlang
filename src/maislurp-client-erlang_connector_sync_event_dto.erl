-module(maislurp-client-erlang_connector_sync_event_dto).

-export([encode/1]).

-export_type([maislurp-client-erlang_connector_sync_event_dto/0]).

-type maislurp-client-erlang_connector_sync_event_dto() ::
    #{ 'id' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'connectorId' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'syncStatus' := binary(),
       'syncCount' := integer(),
       'message' => binary(),
       'createdAt' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time()
     }.

encode(#{ 'id' := Id,
          'connectorId' := ConnectorId,
          'syncStatus' := SyncStatus,
          'syncCount' := SyncCount,
          'message' := Message,
          'createdAt' := CreatedAt
        }) ->
    #{ 'id' => Id,
       'connectorId' => ConnectorId,
       'syncStatus' => SyncStatus,
       'syncCount' => SyncCount,
       'message' => Message,
       'createdAt' => CreatedAt
     }.
