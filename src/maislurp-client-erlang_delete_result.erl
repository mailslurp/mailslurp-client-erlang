-module(maislurp-client-erlang_delete_result).

-export([encode/1]).

-export_type([maislurp-client-erlang_delete_result/0]).

-type maislurp-client-erlang_delete_result() ::
    #{ 'status' := binary()
     }.

encode(#{ 'status' := Status
        }) ->
    #{ 'status' => Status
     }.
