-module(maislurp-client-erlang_lookup_spf_domain_results).

-export([encode/1]).

-export_type([maislurp-client-erlang_lookup_spf_domain_results/0]).

-type maislurp-client-erlang_lookup_spf_domain_results() ::
    #{ 'valid' := boolean(),
       'host' := binary(),
       'record' => binary(),
       'flattenedRecord' => binary(),
       'lookupCount' := integer(),
       'mechanisms' := list(),
       'warnings' := list(),
       'errors' := list()
     }.

encode(#{ 'valid' := Valid,
          'host' := Host,
          'record' := Record,
          'flattenedRecord' := FlattenedRecord,
          'lookupCount' := LookupCount,
          'mechanisms' := Mechanisms,
          'warnings' := Warnings,
          'errors' := Errors
        }) ->
    #{ 'valid' => Valid,
       'host' => Host,
       'record' => Record,
       'flattenedRecord' => FlattenedRecord,
       'lookupCount' => LookupCount,
       'mechanisms' => Mechanisms,
       'warnings' => Warnings,
       'errors' => Errors
     }.
