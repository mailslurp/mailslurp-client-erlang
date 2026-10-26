-module(maislurp-client-erlang_connector_event_projection).

-export([encode/1]).

-export_type([maislurp-client-erlang_connector_event_projection/0]).

-type maislurp-client-erlang_connector_event_projection() ::
    #{ 'eventType' := binary(),
       'message' => binary(),
       'id' => maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'size' := integer(),
       'status' := binary(),
       'createdAt' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'seen' => boolean(),
       'connectorId' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid()
     }.

encode(#{ 'eventType' := EventType,
          'message' := Message,
          'id' := Id,
          'size' := Size,
          'status' := Status,
          'createdAt' := CreatedAt,
          'seen' := Seen,
          'connectorId' := ConnectorId
        }) ->
    #{ 'eventType' => EventType,
       'message' => Message,
       'id' => Id,
       'size' => Size,
       'status' => Status,
       'createdAt' => CreatedAt,
       'seen' => Seen,
       'connectorId' => ConnectorId
     }.
