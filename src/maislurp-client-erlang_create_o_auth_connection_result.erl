-module(maislurp-client-erlang_create_o_auth_connection_result).

-export([encode/1]).

-export_type([maislurp-client-erlang_create_o_auth_connection_result/0]).

-type maislurp-client-erlang_create_o_auth_connection_result() ::
    #{ 'url' := binary()
     }.

encode(#{ 'url' := Url
        }) ->
    #{ 'url' => Url
     }.
