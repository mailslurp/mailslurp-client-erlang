-module(maislurp-client-erlang_device_preview_ingest_run_wait_result).

-export([encode/1]).

-export_type([maislurp-client-erlang_device_preview_ingest_run_wait_result/0]).

-type maislurp-client-erlang_device_preview_ingest_run_wait_result() ::
    #{ 'timedOut' := boolean(),
       'runs' := list()
     }.

encode(#{ 'timedOut' := TimedOut,
          'runs' := Runs
        }) ->
    #{ 'timedOut' => TimedOut,
       'runs' => Runs
     }.
