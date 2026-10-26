-module(maislurp-client-erlang_rerun_device_preview_targets_options).

-export([encode/1]).

-export_type([maislurp-client-erlang_rerun_device_preview_targets_options/0]).

-type maislurp-client-erlang_rerun_device_preview_targets_options() ::
    #{ 'targetIds' := list(),
       'failedOnly' := boolean()
     }.

encode(#{ 'targetIds' := TargetIds,
          'failedOnly' := FailedOnly
        }) ->
    #{ 'targetIds' => TargetIds,
       'failedOnly' => FailedOnly
     }.
