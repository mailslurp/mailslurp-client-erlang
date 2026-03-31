-module(maislurp-client-erlang_deliverability_expectation_result_dto).

-export([encode/1]).

-export_type([maislurp-client-erlang_deliverability_expectation_result_dto/0]).

-type maislurp-client-erlang_deliverability_expectation_result_dto() ::
    #{ 'expectationIndex' := integer(),
       'expectationName' => binary(),
       'minCount' := integer(),
       'actualCount' := integer(),
       'passed' := boolean(),
       'from' => binary(),
       'to' => binary(),
       'subject' => binary()
     }.

encode(#{ 'expectationIndex' := ExpectationIndex,
          'expectationName' := ExpectationName,
          'minCount' := MinCount,
          'actualCount' := ActualCount,
          'passed' := Passed,
          'from' := From,
          'to' := To,
          'subject' := Subject
        }) ->
    #{ 'expectationIndex' => ExpectationIndex,
       'expectationName' => ExpectationName,
       'minCount' => MinCount,
       'actualCount' => ActualCount,
       'passed' => Passed,
       'from' => From,
       'to' => To,
       'subject' => Subject
     }.
