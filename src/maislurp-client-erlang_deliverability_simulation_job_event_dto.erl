-module(maislurp-client-erlang_deliverability_simulation_job_event_dto).

-export([encode/1]).

-export_type([maislurp-client-erlang_deliverability_simulation_job_event_dto/0]).

-type maislurp-client-erlang_deliverability_simulation_job_event_dto() ::
    #{ 'id' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'eventType' := binary(),
       'sendIndex' => integer(),
       'entityId' => maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'targetLabel' => binary(),
       'expectationName' => binary(),
       'attempt' => integer(),
       'message' => binary(),
       'error' => binary(),
       'createdAt' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time()
     }.

encode(#{ 'id' := Id,
          'eventType' := EventType,
          'sendIndex' := SendIndex,
          'entityId' := EntityId,
          'targetLabel' := TargetLabel,
          'expectationName' := ExpectationName,
          'attempt' := Attempt,
          'message' := Message,
          'error' := Error,
          'createdAt' := CreatedAt
        }) ->
    #{ 'id' => Id,
       'eventType' => EventType,
       'sendIndex' => SendIndex,
       'entityId' => EntityId,
       'targetLabel' => TargetLabel,
       'expectationName' => ExpectationName,
       'attempt' => Attempt,
       'message' => Message,
       'error' => Error,
       'createdAt' => CreatedAt
     }.
