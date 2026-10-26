-module(maislurp-client-erlang_lookup_dkim_domain_results).

-export([encode/1]).

-export_type([maislurp-client-erlang_lookup_dkim_domain_results/0]).

-type maislurp-client-erlang_lookup_dkim_domain_results() ::
    #{ 'valid' := boolean(),
       'queriedName' => binary(),
       'selector' => binary(),
       'record' => binary(),
       'algorithm' => binary(),
       'keyLength' => integer(),
       'checkedNames' := list(),
       'warnings' := list(),
       'errors' := list()
     }.

encode(#{ 'valid' := Valid,
          'queriedName' := QueriedName,
          'selector' := Selector,
          'record' := Record,
          'algorithm' := Algorithm,
          'keyLength' := KeyLength,
          'checkedNames' := CheckedNames,
          'warnings' := Warnings,
          'errors' := Errors
        }) ->
    #{ 'valid' => Valid,
       'queriedName' => QueriedName,
       'selector' => Selector,
       'record' => Record,
       'algorithm' => Algorithm,
       'keyLength' => KeyLength,
       'checkedNames' => CheckedNames,
       'warnings' => Warnings,
       'errors' => Errors
     }.
