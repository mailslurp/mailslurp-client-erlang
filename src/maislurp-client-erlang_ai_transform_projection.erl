-module(maislurp-client-erlang_ai_transform_projection).

-export([encode/1]).

-export_type([maislurp-client-erlang_ai_transform_projection/0]).

-type maislurp-client-erlang_ai_transform_projection() ::
    #{ 'name' => binary(),
       'id' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'createdAt' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'conditions' => list(),
       'instructions' => list(),
       'outputSchema' => maislurp-client-erlang_structured_output_schema:maislurp-client-erlang_structured_output_schema()
     }.

encode(#{ 'name' := Name,
          'id' := Id,
          'createdAt' := CreatedAt,
          'conditions' := Conditions,
          'instructions' := Instructions,
          'outputSchema' := OutputSchema
        }) ->
    #{ 'name' => Name,
       'id' => Id,
       'createdAt' => CreatedAt,
       'conditions' => Conditions,
       'instructions' => Instructions,
       'outputSchema' => OutputSchema
     }.
