-module(maislurp-client-erlang_cancel_device_preview_run_result).

-export([encode/1]).

-export_type([maislurp-client-erlang_cancel_device_preview_run_result/0]).

-type maislurp-client-erlang_cancel_device_preview_run_result() ::
    #{ 'run' := maislurp-client-erlang_device_preview_run_dto:maislurp-client-erlang_device_preview_run_dto(),
       'remoteCancelAttempted' := boolean(),
       'remoteCancelAccepted' := boolean(),
       'warning' => binary()
     }.

encode(#{ 'run' := Run,
          'remoteCancelAttempted' := RemoteCancelAttempted,
          'remoteCancelAccepted' := RemoteCancelAccepted,
          'warning' := Warning
        }) ->
    #{ 'run' => Run,
       'remoteCancelAttempted' => RemoteCancelAttempted,
       'remoteCancelAccepted' => RemoteCancelAccepted,
       'warning' => Warning
     }.
