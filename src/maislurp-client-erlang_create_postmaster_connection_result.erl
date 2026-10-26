-module(maislurp-client-erlang_create_postmaster_connection_result).

-export([encode/1]).

-export_type([maislurp-client-erlang_create_postmaster_connection_result/0]).

-type maislurp-client-erlang_create_postmaster_connection_result() ::
    #{ 'url' := binary(),
       'state' := binary(),
       'scope' := binary(),
       'redirectUri' := binary()
     }.

encode(#{ 'url' := Url,
          'state' := State,
          'scope' := Scope,
          'redirectUri' := RedirectUri
        }) ->
    #{ 'url' => Url,
       'state' => State,
       'scope' => Scope,
       'redirectUri' => RedirectUri
     }.
