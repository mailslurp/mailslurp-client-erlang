-module(maislurp-client-erlang_lookup_mta_sts_domain_results).

-export([encode/1]).

-export_type([maislurp-client-erlang_lookup_mta_sts_domain_results/0]).

-type maislurp-client-erlang_lookup_mta_sts_domain_results() ::
    #{ 'valid' := boolean(),
       'query' := maislurp-client-erlang_d_ns_lookup_options:maislurp-client-erlang_d_ns_lookup_options(),
       'records' := list(),
       'wellKnownQuery' := binary(),
       'wellKnownPresent' := boolean(),
       'wellKnownValue' := binary(),
       'errors' := list(),
       'warnings' := list()
     }.

encode(#{ 'valid' := Valid,
          'query' := Query,
          'records' := Records,
          'wellKnownQuery' := WellKnownQuery,
          'wellKnownPresent' := WellKnownPresent,
          'wellKnownValue' := WellKnownValue,
          'errors' := Errors,
          'warnings' := Warnings
        }) ->
    #{ 'valid' => Valid,
       'query' => Query,
       'records' => Records,
       'wellKnownQuery' => WellKnownQuery,
       'wellKnownPresent' => WellKnownPresent,
       'wellKnownValue' => WellKnownValue,
       'errors' => Errors,
       'warnings' => Warnings
     }.
