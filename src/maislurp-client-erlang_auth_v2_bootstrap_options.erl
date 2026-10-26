-module(maislurp-client-erlang_auth_v2_bootstrap_options).

-export([encode/1]).

-export_type([maislurp-client-erlang_auth_v2_bootstrap_options/0]).

-type maislurp-client-erlang_auth_v2_bootstrap_options() ::
    #{ 'returnTo' => binary()
     }.

encode(#{ 'returnTo' := ReturnTo
        }) ->
    #{ 'returnTo' => ReturnTo
     }.
