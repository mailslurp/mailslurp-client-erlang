-module(maislurp-client-erlang_dns_lookup_results).

-export([encode/1]).

-export_type([maislurp-client-erlang_dns_lookup_results/0]).

-type maislurp-client-erlang_dns_lookup_results() ::
    #{ 'results' => list()
     }.

encode(#{ 'results' := Results
        }) ->
    #{ 'results' => Results
     }.
