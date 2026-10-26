-module(maislurp-client-erlang_ai_messages_result).

-export([encode/1]).

-export_type([maislurp-client-erlang_ai_messages_result/0]).

-type maislurp-client-erlang_ai_messages_result() ::
    #{ 'evaluationId' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'status' := binary(),
       'results' := list(),
       'usage' := maislurp-client-erlang_a_i_message_usage:maislurp-client-erlang_a_i_message_usage(),
       'elapsedMs' := integer(),
       'summary' := binary(),
       'successful' := boolean(),
       'unsatisfiedExpectationIds' := list()
     }.

encode(#{ 'evaluationId' := EvaluationId,
          'status' := Status,
          'results' := Results,
          'usage' := Usage,
          'elapsedMs' := ElapsedMs,
          'summary' := Summary,
          'successful' := Successful,
          'unsatisfiedExpectationIds' := UnsatisfiedExpectationIds
        }) ->
    #{ 'evaluationId' => EvaluationId,
       'status' => Status,
       'results' => Results,
       'usage' => Usage,
       'elapsedMs' => ElapsedMs,
       'summary' => Summary,
       'successful' => Successful,
       'unsatisfiedExpectationIds' => UnsatisfiedExpectationIds
     }.
