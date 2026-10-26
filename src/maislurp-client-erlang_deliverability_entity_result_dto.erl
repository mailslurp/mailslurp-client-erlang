-module(maislurp-client-erlang_deliverability_entity_result_dto).

-export([encode/1]).

-export_type([maislurp-client-erlang_deliverability_entity_result_dto/0]).

-type maislurp-client-erlang_deliverability_entity_result_dto() ::
    #{ 'entityId' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'entityLabel' := binary(),
       'matched' := boolean(),
       'matchedExpectationCount' := integer(),
       'totalExpectationCount' := integer(),
       'phoneCountry' => binary(),
       'phoneVariant' => binary(),
       'evaluatedAt' => maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'expectationResults' := list()
     }.

encode(#{ 'entityId' := EntityId,
          'entityLabel' := EntityLabel,
          'matched' := Matched,
          'matchedExpectationCount' := MatchedExpectationCount,
          'totalExpectationCount' := TotalExpectationCount,
          'phoneCountry' := PhoneCountry,
          'phoneVariant' := PhoneVariant,
          'evaluatedAt' := EvaluatedAt,
          'expectationResults' := ExpectationResults
        }) ->
    #{ 'entityId' => EntityId,
       'entityLabel' => EntityLabel,
       'matched' => Matched,
       'matchedExpectationCount' => MatchedExpectationCount,
       'totalExpectationCount' => TotalExpectationCount,
       'phoneCountry' => PhoneCountry,
       'phoneVariant' => PhoneVariant,
       'evaluatedAt' => EvaluatedAt,
       'expectationResults' => ExpectationResults
     }.
