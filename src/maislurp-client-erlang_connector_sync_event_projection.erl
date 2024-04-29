-module(maislurp-client-erlang_connector_sync_event_projection).

-export([encode/1]).

-export_type([maislurp-client-erlang_connector_sync_event_projection/0]).

-type maislurp-client-erlang_connector_sync_event_projection() ::
    #{ 'connectorId' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'syncCount' := integer(),
       'syncStatus' := binary(),
       'createdAt' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'message' => binary(),
       'id' => maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid()
     }.

encode(#{ 'connectorId' := ConnectorId,
          'syncCount' := SyncCount,
          'syncStatus' := SyncStatus,
          'createdAt' := CreatedAt,
          'message' := Message,
          'id' := Id
        }) ->
    #{ 'connectorId' => ConnectorId,
       'syncCount' => SyncCount,
       'syncStatus' => SyncStatus,
       'createdAt' => CreatedAt,
       'message' => Message,
       'id' => Id
     }.
