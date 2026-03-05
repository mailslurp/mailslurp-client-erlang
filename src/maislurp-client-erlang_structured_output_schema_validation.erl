-module(maislurp-client-erlang_structured_output_schema_validation).

-export([encode/1]).

-export_type([maislurp-client-erlang_structured_output_schema_validation/0]).

-type maislurp-client-erlang_structured_output_schema_validation() ::
    #{ 'valid' := boolean(),
       'errors' => list(),
       'exampleOutput' => binary()
     }.

encode(#{ 'valid' := Valid,
          'errors' := Errors,
          'exampleOutput' := ExampleOutput
        }) ->
    #{ 'valid' => Valid,
       'errors' => Errors,
       'exampleOutput' => ExampleOutput
     }.
