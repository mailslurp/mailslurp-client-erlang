-module(maislurp-client-erlang_dns_propagation_resolver_result).

-export([encode/1]).

-export_type([maislurp-client-erlang_dns_propagation_resolver_result/0]).

-type maislurp-client-erlang_dns_propagation_resolver_result() ::
    #{ 'resolver' := binary(),
       'records' := list(),
       'responded' := boolean(),
       'matchedExpectedValue' => boolean()
     }.

encode(#{ 'resolver' := Resolver,
          'records' := Records,
          'responded' := Responded,
          'matchedExpectedValue' := MatchedExpectedValue
        }) ->
    #{ 'resolver' => Resolver,
       'records' => Records,
       'responded' => Responded,
       'matchedExpectedValue' => MatchedExpectedValue
     }.
