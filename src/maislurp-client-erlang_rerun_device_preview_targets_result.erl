-module(maislurp-client-erlang_rerun_device_preview_targets_result).

-export([encode/1]).

-export_type([maislurp-client-erlang_rerun_device_preview_targets_result/0]).

-type maislurp-client-erlang_rerun_device_preview_targets_result() ::
    #{ 'results' := maislurp-client-erlang_device_preview_run_results_dto:maislurp-client-erlang_device_preview_run_results_dto(),
       'remoteRerunAttempted' := boolean(),
       'remoteRerunAccepted' := boolean(),
       'affectedTargets' := integer(),
       'affectedTasks' := integer(),
       'warnings' := list()
     }.

encode(#{ 'results' := Results,
          'remoteRerunAttempted' := RemoteRerunAttempted,
          'remoteRerunAccepted' := RemoteRerunAccepted,
          'affectedTargets' := AffectedTargets,
          'affectedTasks' := AffectedTasks,
          'warnings' := Warnings
        }) ->
    #{ 'results' => Results,
       'remoteRerunAttempted' => RemoteRerunAttempted,
       'remoteRerunAccepted' => RemoteRerunAccepted,
       'affectedTargets' => AffectedTargets,
       'affectedTasks' => AffectedTasks,
       'warnings' => Warnings
     }.
