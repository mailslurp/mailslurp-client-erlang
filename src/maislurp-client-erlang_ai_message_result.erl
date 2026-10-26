-module(maislurp-client-erlang_ai_message_result).

-export([encode/1]).

-export_type([maislurp-client-erlang_ai_message_result/0]).

-type maislurp-client-erlang_ai_message_result() ::
    #{ 'evaluationId' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'status' := binary(),
       'summary' := binary(),
       'model' := maislurp-client-erlang_a_i_message_model_dto:maislurp-client-erlang_a_i_message_model_dto(),
       'usage' := maislurp-client-erlang_a_i_message_usage:maislurp-client-erlang_a_i_message_usage(),
       'elapsedMs' := integer(),
       'message' => maislurp-client-erlang_a_i_message_reference:maislurp-client-erlang_a_i_message_reference(),
       'email' => maislurp-client-erlang_email:maislurp-client-erlang_email(),
       'sms' => maislurp-client-erlang_sms_dto:maislurp-client-erlang_sms_dto(),
       'match' => maislurp-client-erlang_a_i_message_match_result:maislurp-client-erlang_a_i_message_match_result(),
       'assertionStatus' => binary(),
       'assertions' := list(),
       'data' => maps:map(),
       'extractionEvidence' := maps:map(),
       'candidates' := list(),
       'extractionReason' => binary(),
       'successful' := boolean(),
       'failedAssertionIds' := list()
     }.

encode(#{ 'evaluationId' := EvaluationId,
          'status' := Status,
          'summary' := Summary,
          'model' := Model,
          'usage' := Usage,
          'elapsedMs' := ElapsedMs,
          'message' := Message,
          'email' := Email,
          'sms' := Sms,
          'match' := Match,
          'assertionStatus' := AssertionStatus,
          'assertions' := Assertions,
          'data' := Data,
          'extractionEvidence' := ExtractionEvidence,
          'candidates' := Candidates,
          'extractionReason' := ExtractionReason,
          'successful' := Successful,
          'failedAssertionIds' := FailedAssertionIds
        }) ->
    #{ 'evaluationId' => EvaluationId,
       'status' => Status,
       'summary' => Summary,
       'model' => Model,
       'usage' => Usage,
       'elapsedMs' => ElapsedMs,
       'message' => Message,
       'email' => Email,
       'sms' => Sms,
       'match' => Match,
       'assertionStatus' => AssertionStatus,
       'assertions' => Assertions,
       'data' => Data,
       'extractionEvidence' => ExtractionEvidence,
       'candidates' => Candidates,
       'extractionReason' => ExtractionReason,
       'successful' => Successful,
       'failedAssertionIds' => FailedAssertionIds
     }.
