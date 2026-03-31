-module(maislurp-client-erlang_test_smtp_server_results).

-export([encode/1]).

-export_type([maislurp-client-erlang_test_smtp_server_results/0]).

-type maislurp-client-erlang_test_smtp_server_results() ::
    #{ 'connected' := boolean(),
       'banner' => binary(),
       'tls' := maislurp-client-erlang_smtp_tls_diagnostic_result:maislurp-client-erlang_smtp_tls_diagnostic_result(),
       'auth' := maislurp-client-erlang_smtp_auth_diagnostic_result:maislurp-client-erlang_smtp_auth_diagnostic_result(),
       'transcript' := list(),
       'warnings' := list(),
       'errors' := list()
     }.

encode(#{ 'connected' := Connected,
          'banner' := Banner,
          'tls' := Tls,
          'auth' := Auth,
          'transcript' := Transcript,
          'warnings' := Warnings,
          'errors' := Errors
        }) ->
    #{ 'connected' => Connected,
       'banner' => Banner,
       'tls' => Tls,
       'auth' => Auth,
       'transcript' => Transcript,
       'warnings' => Warnings,
       'errors' => Errors
     }.
