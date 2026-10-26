-module(maislurp-client-erlang_agent_worker_heartbeat_options).

-export([encode/1]).

-export_type([maislurp-client-erlang_agent_worker_heartbeat_options/0]).

-type maislurp-client-erlang_agent_worker_heartbeat_options() ::
    #{ 'workerId' := binary(),
       'instanceId' := binary(),
       'release' => binary()
     }.

encode(#{ 'workerId' := WorkerId,
          'instanceId' := InstanceId,
          'release' := Release
        }) ->
    #{ 'workerId' => WorkerId,
       'instanceId' => InstanceId,
       'release' => Release
     }.
