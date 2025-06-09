-module(maislurp-client-erlang_ai_tranform_create_options).

-export([encode/1]).

-export_type([maislurp-client-erlang_ai_tranform_create_options/0]).

-type maislurp-client-erlang_ai_tranform_create_options() ::
    #{ 'name' => binary(),
       'conditions' => list(),
       'instructions' => list(),
       'outputSchema' => maislurp-client-erlang_structured_output_schema:maislurp-client-erlang_structured_output_schema()
     }.

encode(#{ 'name' := Name,
          'conditions' := Conditions,
          'instructions' := Instructions,
          'outputSchema' := OutputSchema
        }) ->
    #{ 'name' => Name,
       'conditions' => Conditions,
       'instructions' => Instructions,
       'outputSchema' => OutputSchema
     }.
