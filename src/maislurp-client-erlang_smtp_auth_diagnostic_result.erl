-module(maislurp-client-erlang_smtp_auth_diagnostic_result).

-export([encode/1]).

-export_type([maislurp-client-erlang_smtp_auth_diagnostic_result/0]).

-type maislurp-client-erlang_smtp_auth_diagnostic_result() ::
    #{ 'attempted' := boolean(),
       'success' := boolean(),
       'mechanism' => binary()
     }.

encode(#{ 'attempted' := Attempted,
          'success' := Success,
          'mechanism' := Mechanism
        }) ->
    #{ 'attempted' => Attempted,
       'success' => Success,
       'mechanism' => Mechanism
     }.
