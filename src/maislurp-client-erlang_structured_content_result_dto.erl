-module(maislurp-client-erlang_structured_content_result_dto).

-export([encode/1]).

-export_type([maislurp-client-erlang_structured_content_result_dto/0]).

-type maislurp-client-erlang_structured_content_result_dto() ::
    #{ 'result' := maps:map()
     }.

encode(#{ 'result' := Result
        }) ->
    #{ 'result' => Result
     }.
