-module(maislurp-client-erlang_json_schema_dto).

-export([encode/1]).

-export_type([maislurp-client-erlang_json_schema_dto/0]).

-type maislurp-client-erlang_json_schema_dto() ::
    #{ 'value' := binary()
     }.

encode(#{ 'value' := Value
        }) ->
    #{ 'value' => Value
     }.
