-module(maislurp-client-erlang_cancel_device_preview_run_options).

-export([encode/1]).

-export_type([maislurp-client-erlang_cancel_device_preview_run_options/0]).

-type maislurp-client-erlang_cancel_device_preview_run_options() ::
    #{ 'reason' => binary()
     }.

encode(#{ 'reason' := Reason
        }) ->
    #{ 'reason' => Reason
     }.
