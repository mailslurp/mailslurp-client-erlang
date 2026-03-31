-module(maislurp-client-erlang_smtp_tls_diagnostic_result).

-export([encode/1]).

-export_type([maislurp-client-erlang_smtp_tls_diagnostic_result/0]).

-type maislurp-client-erlang_smtp_tls_diagnostic_result() ::
    #{ 'supported' := boolean(),
       'negotiated' := boolean(),
       'protocol' => binary(),
       'cipher' => binary()
     }.

encode(#{ 'supported' := Supported,
          'negotiated' := Negotiated,
          'protocol' := Protocol,
          'cipher' := Cipher
        }) ->
    #{ 'supported' => Supported,
       'negotiated' => Negotiated,
       'protocol' => Protocol,
       'cipher' => Cipher
     }.
