-module(maislurp-client-erlang_smtp_diagnostic_step).

-export([encode/1]).

-export_type([maislurp-client-erlang_smtp_diagnostic_step/0]).

-type maislurp-client-erlang_smtp_diagnostic_step() ::
    #{ 'step' := binary(),
       'code' => binary(),
       'message' := binary()
     }.

encode(#{ 'step' := Step,
          'code' := Code,
          'message' := Message
        }) ->
    #{ 'step' => Step,
       'code' => Code,
       'message' => Message
     }.
