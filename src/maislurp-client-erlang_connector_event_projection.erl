-module(maislurp-client-erlang_connector_event_projection).

-export([encode/1]).

-export_type([maislurp-client-erlang_connector_event_projection/0]).

-type maislurp-client-erlang_connector_event_projection() ::
    #{ 'createdAt' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'eventType' := binary(),
       'connectorId' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'seen' => boolean(),
       'message' => binary(),
       'id' => maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'size' := integer(),
       'status' := binary()
     }.

encode(#{ 'createdAt' := CreatedAt,
          'eventType' := EventType,
          'connectorId' := ConnectorId,
          'seen' := Seen,
          'message' := Message,
          'id' := Id,
          'size' := Size,
          'status' := Status
        }) ->
    #{ 'createdAt' => CreatedAt,
       'eventType' => EventType,
       'connectorId' => ConnectorId,
       'seen' => Seen,
       'message' => Message,
       'id' => Id,
       'size' => Size,
       'status' => Status
     }.
