-module(maislurp-client-erlang_device_preview_native_target_availability_list_dto).

-export([encode/1]).

-export_type([maislurp-client-erlang_device_preview_native_target_availability_list_dto/0]).

-type maislurp-client-erlang_device_preview_native_target_availability_list_dto() ::
    #{ 'enabled' := boolean(),
       'heartbeatOfflineAfterSeconds' := integer(),
       'targets' := list(),
       'error' => binary()
     }.

encode(#{ 'enabled' := Enabled,
          'heartbeatOfflineAfterSeconds' := HeartbeatOfflineAfterSeconds,
          'targets' := Targets,
          'error' := Error
        }) ->
    #{ 'enabled' => Enabled,
       'heartbeatOfflineAfterSeconds' => HeartbeatOfflineAfterSeconds,
       'targets' => Targets,
       'error' => Error
     }.
