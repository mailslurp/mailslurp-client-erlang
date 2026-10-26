-module(maislurp-client-erlang_empty_response_dto).

-export([encode/1]).

-export_type([maislurp-client-erlang_empty_response_dto/0]).

-type maislurp-client-erlang_empty_response_dto() ::
    #{ 'message' => binary()
     }.

encode(#{ 'message' := Message
        }) ->
    #{ 'message' => Message
     }.
