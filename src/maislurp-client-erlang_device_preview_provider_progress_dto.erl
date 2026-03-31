-module(maislurp-client-erlang_device_preview_provider_progress_dto).

-export([encode/1]).

-export_type([maislurp-client-erlang_device_preview_provider_progress_dto/0]).

-type maislurp-client-erlang_device_preview_provider_progress_dto() ::
    #{ 'run' := maislurp-client-erlang_device_preview_run_dto:maislurp-client-erlang_device_preview_run_dto(),
       'provider' := binary(),
       'status' := binary(),
       'targetCount' := integer(),
       'readyCount' := integer(),
       'failedCount' := integer(),
       'capturingCount' := integer(),
       'pendingCount' := integer(),
       'targets' := list(),
       'screenshots' := list()
     }.

encode(#{ 'run' := Run,
          'provider' := Provider,
          'status' := Status,
          'targetCount' := TargetCount,
          'readyCount' := ReadyCount,
          'failedCount' := FailedCount,
          'capturingCount' := CapturingCount,
          'pendingCount' := PendingCount,
          'targets' := Targets,
          'screenshots' := Screenshots
        }) ->
    #{ 'run' => Run,
       'provider' => Provider,
       'status' => Status,
       'targetCount' => TargetCount,
       'readyCount' => ReadyCount,
       'failedCount' => FailedCount,
       'capturingCount' => CapturingCount,
       'pendingCount' => PendingCount,
       'targets' => Targets,
       'screenshots' => Screenshots
     }.
