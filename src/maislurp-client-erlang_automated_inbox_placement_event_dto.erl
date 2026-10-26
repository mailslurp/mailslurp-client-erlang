-module(maislurp-client-erlang_automated_inbox_placement_event_dto).

-export([encode/1]).

-export_type([maislurp-client-erlang_automated_inbox_placement_event_dto/0]).

-type maislurp-client-erlang_automated_inbox_placement_event_dto() ::
    #{ 'id' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'executionId' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'eventType' := binary(),
       'details' := maps:map(),
       'createdAt' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time()
     }.

encode(#{ 'id' := Id,
          'executionId' := ExecutionId,
          'eventType' := EventType,
          'details' := Details,
          'createdAt' := CreatedAt
        }) ->
    #{ 'id' => Id,
       'executionId' => ExecutionId,
       'eventType' => EventType,
       'details' => Details,
       'createdAt' => CreatedAt
     }.
