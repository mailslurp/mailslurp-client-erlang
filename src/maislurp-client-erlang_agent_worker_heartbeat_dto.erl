-module(maislurp-client-erlang_agent_worker_heartbeat_dto).

-export([encode/1]).

-export_type([maislurp-client-erlang_agent_worker_heartbeat_dto/0]).

-type maislurp-client-erlang_agent_worker_heartbeat_dto() ::
    #{ 'id' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'connectionId' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'workerId' := binary(),
       'instanceId' := binary(),
       'release' => binary(),
       'firstSeenAt' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'lastSeenAt' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'staleAfter' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'status' := binary()
     }.

encode(#{ 'id' := Id,
          'connectionId' := ConnectionId,
          'workerId' := WorkerId,
          'instanceId' := InstanceId,
          'release' := Release,
          'firstSeenAt' := FirstSeenAt,
          'lastSeenAt' := LastSeenAt,
          'staleAfter' := StaleAfter,
          'status' := Status
        }) ->
    #{ 'id' => Id,
       'connectionId' => ConnectionId,
       'workerId' => WorkerId,
       'instanceId' => InstanceId,
       'release' => Release,
       'firstSeenAt' => FirstSeenAt,
       'lastSeenAt' => LastSeenAt,
       'staleAfter' => StaleAfter,
       'status' => Status
     }.
