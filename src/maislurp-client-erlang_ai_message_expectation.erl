-module(maislurp-client-erlang_ai_message_expectation).

-export([encode/1]).

-export_type([maislurp-client-erlang_ai_message_expectation/0]).

-type maislurp-client-erlang_ai_message_expectation() ::
    #{ 'id' := binary(),
       'scope' := maislurp-client-erlang_a_i_message_scope:maislurp-client-erlang_a_i_message_scope(),
       'match' => maislurp-client-erlang_a_i_message_match_options:maislurp-client-erlang_a_i_message_match_options(),
       'emailMatchOptions' => maislurp-client-erlang_match_options:maislurp-client-erlang_match_options(),
       'smsMatchOptions' => maislurp-client-erlang_sms_match_options:maislurp-client-erlang_sms_match_options(),
       'assertions' := list(),
       'outputSchema' => maislurp-client-erlang_structured_output_schema:maislurp-client-erlang_structured_output_schema(),
       'transformId' => maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'instructions' => binary(),
       'extractionPreset' => binary()
     }.

encode(#{ 'id' := Id,
          'scope' := Scope,
          'match' := Match,
          'emailMatchOptions' := EmailMatchOptions,
          'smsMatchOptions' := SmsMatchOptions,
          'assertions' := Assertions,
          'outputSchema' := OutputSchema,
          'transformId' := TransformId,
          'instructions' := Instructions,
          'extractionPreset' := ExtractionPreset
        }) ->
    #{ 'id' => Id,
       'scope' => Scope,
       'match' => Match,
       'emailMatchOptions' => EmailMatchOptions,
       'smsMatchOptions' => SmsMatchOptions,
       'assertions' => Assertions,
       'outputSchema' => OutputSchema,
       'transformId' => TransformId,
       'instructions' => Instructions,
       'extractionPreset' => ExtractionPreset
     }.
