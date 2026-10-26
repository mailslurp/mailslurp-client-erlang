-module(maislurp-client-erlang_wait_for_ai_message_options).

-export([encode/1]).

-export_type([maislurp-client-erlang_wait_for_ai_message_options/0]).

-type maislurp-client-erlang_wait_for_ai_message_options() ::
    #{ 'scope' := maislurp-client-erlang_a_i_message_scope:maislurp-client-erlang_a_i_message_scope(),
       'since' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'timeout' := integer(),
       'before' => maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'unreadOnly' := boolean(),
       'sortDirection' := binary(),
       'match' => maislurp-client-erlang_a_i_message_match_options:maislurp-client-erlang_a_i_message_match_options(),
       'emailMatchOptions' => maislurp-client-erlang_match_options:maislurp-client-erlang_match_options(),
       'smsMatchOptions' => maislurp-client-erlang_sms_match_options:maislurp-client-erlang_sms_match_options(),
       'assertions' := list(),
       'outputSchema' => maislurp-client-erlang_structured_output_schema:maislurp-client-erlang_structured_output_schema(),
       'transformId' => maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'instructions' => binary(),
       'aiOptions' := maislurp-client-erlang_a_i_message_ai_options:maislurp-client-erlang_a_i_message_ai_options(),
       'extractionPreset' => binary()
     }.

encode(#{ 'scope' := Scope,
          'since' := Since,
          'timeout' := Timeout,
          'before' := Before,
          'unreadOnly' := UnreadOnly,
          'sortDirection' := SortDirection,
          'match' := Match,
          'emailMatchOptions' := EmailMatchOptions,
          'smsMatchOptions' := SmsMatchOptions,
          'assertions' := Assertions,
          'outputSchema' := OutputSchema,
          'transformId' := TransformId,
          'instructions' := Instructions,
          'aiOptions' := AiOptions,
          'extractionPreset' := ExtractionPreset
        }) ->
    #{ 'scope' => Scope,
       'since' => Since,
       'timeout' => Timeout,
       'before' => Before,
       'unreadOnly' => UnreadOnly,
       'sortDirection' => SortDirection,
       'match' => Match,
       'emailMatchOptions' => EmailMatchOptions,
       'smsMatchOptions' => SmsMatchOptions,
       'assertions' => Assertions,
       'outputSchema' => OutputSchema,
       'transformId' => TransformId,
       'instructions' => Instructions,
       'aiOptions' => AiOptions,
       'extractionPreset' => ExtractionPreset
     }.
