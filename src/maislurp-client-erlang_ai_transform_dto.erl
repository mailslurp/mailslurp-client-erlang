-module(maislurp-client-erlang_ai_transform_dto).

-export([encode/1]).

-export_type([maislurp-client-erlang_ai_transform_dto/0]).

-type maislurp-client-erlang_ai_transform_dto() ::
    #{ 'id' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'name' => binary(),
       'conditions' => list(),
       'instructions' => list(),
       'outputSchema' => maislurp-client-erlang_structured_output_schema:maislurp-client-erlang_structured_output_schema(),
       'createdAt' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time()
     }.

encode(#{ 'id' := Id,
          'name' := Name,
          'conditions' := Conditions,
          'instructions' := Instructions,
          'outputSchema' := OutputSchema,
          'createdAt' := CreatedAt
        }) ->
    #{ 'id' => Id,
       'name' => Name,
       'conditions' => Conditions,
       'instructions' => Instructions,
       'outputSchema' => OutputSchema,
       'createdAt' => CreatedAt
     }.
