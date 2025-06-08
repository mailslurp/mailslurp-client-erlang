-module(maislurp-client-erlang_ai_transform_projection).

-export([encode/1]).

-export_type([maislurp-client-erlang_ai_transform_projection/0]).

-type maislurp-client-erlang_ai_transform_projection() ::
    #{ 'conditions' => list(),
       'instructions' => list(),
       'outputSchema' => maislurp-client-erlang_structured_output_schema:maislurp-client-erlang_structured_output_schema(),
       'name' => binary(),
       'id' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid()
     }.

encode(#{ 'conditions' := Conditions,
          'instructions' := Instructions,
          'outputSchema' := OutputSchema,
          'name' := Name,
          'id' := Id
        }) ->
    #{ 'conditions' => Conditions,
       'instructions' => Instructions,
       'outputSchema' => OutputSchema,
       'name' => Name,
       'id' => Id
     }.
