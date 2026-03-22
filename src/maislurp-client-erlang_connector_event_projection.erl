-module(maislurp-client-erlang_connector_event_projection).

-export([encode/1]).

-export_type([maislurp-client-erlang_connector_event_projection/0]).

-type maislurp-client-erlang_connector_event_projection() ::
    #{ 'message' => binary(),
       'id' => maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'size' := integer(),
       'eventType' := binary(),
       'createdAt' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'connectorId' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'seen' => boolean(),
       'status' := binary()
     }.

encode(#{ 'message' := Message,
          'id' := Id,
          'size' := Size,
          'eventType' := EventType,
          'createdAt' := CreatedAt,
          'connectorId' := ConnectorId,
          'seen' := Seen,
          'status' := Status
        }) ->
    #{ 'message' => Message,
       'id' => Id,
       'size' => Size,
       'eventType' => EventType,
       'createdAt' => CreatedAt,
       'connectorId' => ConnectorId,
       'seen' => Seen,
       'status' => Status
     }.
