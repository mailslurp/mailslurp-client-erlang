-module(maislurp-client-erlang_connector_event_projection).

-export([encode/1]).

-export_type([maislurp-client-erlang_connector_event_projection/0]).

-type maislurp-client-erlang_connector_event_projection() ::
    #{ 'eventType' := binary(),
       'createdAt' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'connectorId' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'seen' => boolean(),
       'message' => binary(),
       'id' => maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'size' := integer(),
       'status' := binary()
     }.

encode(#{ 'eventType' := EventType,
          'createdAt' := CreatedAt,
          'connectorId' := ConnectorId,
          'seen' := Seen,
          'message' := Message,
          'id' := Id,
          'size' := Size,
          'status' := Status
        }) ->
    #{ 'eventType' => EventType,
       'createdAt' => CreatedAt,
       'connectorId' => ConnectorId,
       'seen' => Seen,
       'message' => Message,
       'id' => Id,
       'size' => Size,
       'status' => Status
     }.
