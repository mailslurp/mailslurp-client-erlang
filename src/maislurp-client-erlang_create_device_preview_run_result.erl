-module(maislurp-client-erlang_create_device_preview_run_result).

-export([encode/1]).

-export_type([maislurp-client-erlang_create_device_preview_run_result/0]).

-type maislurp-client-erlang_create_device_preview_run_result() ::
    #{ 'run' := maislurp-client-erlang_device_preview_run_dto:maislurp-client-erlang_device_preview_run_dto(),
       'created' := boolean()
     }.

encode(#{ 'run' := Run,
          'created' := Created
        }) ->
    #{ 'run' => Run,
       'created' => Created
     }.
