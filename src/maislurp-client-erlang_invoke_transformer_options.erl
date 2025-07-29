-module(maislurp-client-erlang_invoke_transformer_options).

-export([encode/1]).

-export_type([maislurp-client-erlang_invoke_transformer_options/0]).

-type maislurp-client-erlang_invoke_transformer_options() ::
    #{ 'aiTransformId' => maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'aiTransformMappingId' => maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'rawInput' => binary(),
       'entityId' => binary(),
       'entityType' => binary(),
       'rawConditions' => list(),
       'rawInstructions' => list(),
       'rawOutputSchema' => maislurp-client-erlang_structured_output_schema:maislurp-client-erlang_structured_output_schema(),
       'contentSelector' => binary()
     }.

encode(#{ 'aiTransformId' := AiTransformId,
          'aiTransformMappingId' := AiTransformMappingId,
          'rawInput' := RawInput,
          'entityId' := EntityId,
          'entityType' := EntityType,
          'rawConditions' := RawConditions,
          'rawInstructions' := RawInstructions,
          'rawOutputSchema' := RawOutputSchema,
          'contentSelector' := ContentSelector
        }) ->
    #{ 'aiTransformId' => AiTransformId,
       'aiTransformMappingId' => AiTransformMappingId,
       'rawInput' => RawInput,
       'entityId' => EntityId,
       'entityType' => EntityType,
       'rawConditions' => RawConditions,
       'rawInstructions' => RawInstructions,
       'rawOutputSchema' => RawOutputSchema,
       'contentSelector' => ContentSelector
     }.
