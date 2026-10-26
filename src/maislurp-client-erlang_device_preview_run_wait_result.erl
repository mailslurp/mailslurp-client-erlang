-module(maislurp-client-erlang_device_preview_run_wait_result).

-export([encode/1]).

-export_type([maislurp-client-erlang_device_preview_run_wait_result/0]).

-type maislurp-client-erlang_device_preview_run_wait_result() ::
    #{ 'timedOut' := boolean(),
       'run' := maislurp-client-erlang_device_preview_run_dto:maislurp-client-erlang_device_preview_run_dto()
     }.

encode(#{ 'timedOut' := TimedOut,
          'run' := Run
        }) ->
    #{ 'timedOut' => TimedOut,
       'run' => Run
     }.
