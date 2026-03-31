-module(maislurp-client-erlang_check_dns_propagation_results).

-export([encode/1]).

-export_type([maislurp-client-erlang_check_dns_propagation_results/0]).

-type maislurp-client-erlang_check_dns_propagation_results() ::
    #{ 'host' := binary(),
       'recordType' := binary(),
       'expectedValue' => binary(),
       'propagatedToAllResolvers' := boolean(),
       'respondingResolverCount' := integer(),
       'matchingResolverCount' := integer(),
       'resolverResults' := list(),
       'warnings' := list(),
       'errors' := list()
     }.

encode(#{ 'host' := Host,
          'recordType' := RecordType,
          'expectedValue' := ExpectedValue,
          'propagatedToAllResolvers' := PropagatedToAllResolvers,
          'respondingResolverCount' := RespondingResolverCount,
          'matchingResolverCount' := MatchingResolverCount,
          'resolverResults' := ResolverResults,
          'warnings' := Warnings,
          'errors' := Errors
        }) ->
    #{ 'host' => Host,
       'recordType' => RecordType,
       'expectedValue' => ExpectedValue,
       'propagatedToAllResolvers' => PropagatedToAllResolvers,
       'respondingResolverCount' => RespondingResolverCount,
       'matchingResolverCount' => MatchingResolverCount,
       'resolverResults' => ResolverResults,
       'warnings' => Warnings,
       'errors' => Errors
     }.
