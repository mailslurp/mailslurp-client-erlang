-module(maislurp-client-erlang_connector_event_dto).

-export([encode/1]).

-export_type([maislurp-client-erlang_connector_event_dto/0]).

-type maislurp-client-erlang_connector_event_dto() ::
    #{ 'id' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'connectorId' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'status' := binary(),
       'eventType' := binary(),
       'size' := integer(),
       'message' => binary(),
       'logs' => binary(),
       'seen' => boolean(),
       'createdAt' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time()
     }.

encode(#{ 'id' := Id,
          'connectorId' := ConnectorId,
          'status' := Status,
          'eventType' := EventType,
          'size' := Size,
          'message' := Message,
          'logs' := Logs,
          'seen' := Seen,
          'createdAt' := CreatedAt
        }) ->
    #{ 'id' => Id,
       'connectorId' => ConnectorId,
       'status' => Status,
       'eventType' => EventType,
       'size' => Size,
       'message' => Message,
       'logs' => Logs,
       'seen' => Seen,
       'createdAt' => CreatedAt
     }.
