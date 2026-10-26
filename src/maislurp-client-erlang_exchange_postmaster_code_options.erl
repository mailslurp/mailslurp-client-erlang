-module(maislurp-client-erlang_exchange_postmaster_code_options).

-export([encode/1]).

-export_type([maislurp-client-erlang_exchange_postmaster_code_options/0]).

-type maislurp-client-erlang_exchange_postmaster_code_options() ::
    #{ 'authorizationCode' := binary(),
       'redirectUri' := binary(),
       'state' := binary()
     }.

encode(#{ 'authorizationCode' := AuthorizationCode,
          'redirectUri' := RedirectUri,
          'state' := State
        }) ->
    #{ 'authorizationCode' => AuthorizationCode,
       'redirectUri' => RedirectUri,
       'state' => State
     }.
