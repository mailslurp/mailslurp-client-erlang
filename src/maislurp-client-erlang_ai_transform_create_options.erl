-module(maislurp-client-erlang_ai_transform_create_options).

-export([encode/1]).

-export_type([maislurp-client-erlang_ai_transform_create_options/0]).

-type maislurp-client-erlang_ai_transform_create_options() ::
    #{ 'name' => binary(),
       'conditions' => list(),
       'instructions' => list(),
       'outputSchema' => maislurp-client-erlang_structured_output_schema:maislurp-client-erlang_structured_output_schema(),
       'outputSchemaId' => maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'extractPrompt' => binary()
     }.

encode(#{ 'name' := Name,
          'conditions' := Conditions,
          'instructions' := Instructions,
          'outputSchema' := OutputSchema,
          'outputSchemaId' := OutputSchemaId,
          'extractPrompt' := ExtractPrompt
        }) ->
    #{ 'name' => Name,
       'conditions' => Conditions,
       'instructions' => Instructions,
       'outputSchema' => OutputSchema,
       'outputSchemaId' => OutputSchemaId,
       'extractPrompt' => ExtractPrompt
     }.
