-module(maislurp-client-erlang_extract_ai_message_options).

-export([encode/1]).

-export_type([maislurp-client-erlang_extract_ai_message_options/0]).

-type maislurp-client-erlang_extract_ai_message_options() ::
    #{ 'message' := maislurp-client-erlang_a_i_message_reference:maislurp-client-erlang_a_i_message_reference(),
       'outputSchema' => maislurp-client-erlang_structured_output_schema:maislurp-client-erlang_structured_output_schema(),
       'transformId' => maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'instructions' => binary(),
       'timeout' := integer(),
       'aiOptions' := maislurp-client-erlang_a_i_message_ai_options:maislurp-client-erlang_a_i_message_ai_options(),
       'extractionPreset' => binary()
     }.

encode(#{ 'message' := Message,
          'outputSchema' := OutputSchema,
          'transformId' := TransformId,
          'instructions' := Instructions,
          'timeout' := Timeout,
          'aiOptions' := AiOptions,
          'extractionPreset' := ExtractionPreset
        }) ->
    #{ 'message' => Message,
       'outputSchema' => OutputSchema,
       'transformId' => TransformId,
       'instructions' => Instructions,
       'timeout' => Timeout,
       'aiOptions' => AiOptions,
       'extractionPreset' => ExtractionPreset
     }.
