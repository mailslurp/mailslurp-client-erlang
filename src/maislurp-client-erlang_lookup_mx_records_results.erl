-module(maislurp-client-erlang_lookup_mx_records_results).

-export([encode/1]).

-export_type([maislurp-client-erlang_lookup_mx_records_results/0]).

-type maislurp-client-erlang_lookup_mx_records_results() ::
    #{ 'records' := list(),
       'errors' := list(),
       'warnings' := list()
     }.

encode(#{ 'records' := Records,
          'errors' := Errors,
          'warnings' := Warnings
        }) ->
    #{ 'records' => Records,
       'errors' => Errors,
       'warnings' => Warnings
     }.
