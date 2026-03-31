-module(maislurp-client-erlang_device_preview_run_results_dto).

-export([encode/1]).

-export_type([maislurp-client-erlang_device_preview_run_results_dto/0]).

-type maislurp-client-erlang_device_preview_run_results_dto() ::
    #{ 'run' := maislurp-client-erlang_device_preview_run_dto:maislurp-client-erlang_device_preview_run_dto(),
       'targets' := list(),
       'screenshots' := list()
     }.

encode(#{ 'run' := Run,
          'targets' := Targets,
          'screenshots' := Screenshots
        }) ->
    #{ 'run' => Run,
       'targets' => Targets,
       'screenshots' => Screenshots
     }.
