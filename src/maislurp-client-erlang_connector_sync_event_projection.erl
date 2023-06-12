-module(maislurp-client-erlang_connector_sync_event_projection).

-export([encode/1]).

-export_type([maislurp-client-erlang_connector_sync_event_projection/0]).

-type maislurp-client-erlang_connector_sync_event_projection() ::
    #{ 'message' => binary(),
       'id' => maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'createdAt' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'connectorId' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'syncCount' := integer(),
       'syncStatus' := binary()
     }.

encode(#{ 'message' := Message,
          'id' := Id,
          'createdAt' := CreatedAt,
          'connectorId' := ConnectorId,
          'syncCount' := SyncCount,
          'syncStatus' := SyncStatus
        }) ->
    #{ 'message' => Message,
       'id' => Id,
       'createdAt' => CreatedAt,
       'connectorId' => ConnectorId,
       'syncCount' => SyncCount,
       'syncStatus' => SyncStatus
     }.
