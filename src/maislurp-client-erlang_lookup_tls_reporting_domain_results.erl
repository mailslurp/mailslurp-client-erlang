-module(maislurp-client-erlang_lookup_tls_reporting_domain_results).

-export([encode/1]).

-export_type([maislurp-client-erlang_lookup_tls_reporting_domain_results/0]).

-type maislurp-client-erlang_lookup_tls_reporting_domain_results() ::
    #{ 'valid' := boolean(),
       'query' := maislurp-client-erlang_d_ns_lookup_options:maislurp-client-erlang_d_ns_lookup_options(),
       'records' := list(),
       'errors' := list(),
       'warnings' := list()
     }.

encode(#{ 'valid' := Valid,
          'query' := Query,
          'records' := Records,
          'errors' := Errors,
          'warnings' := Warnings
        }) ->
    #{ 'valid' => Valid,
       'query' => Query,
       'records' => Records,
       'errors' => Errors,
       'warnings' => Warnings
     }.
