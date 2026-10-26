-module(maislurp-client-erlang_create_postmaster_connection_options).

-export([encode/1]).

-export_type([maislurp-client-erlang_create_postmaster_connection_options/0]).

-type maislurp-client-erlang_create_postmaster_connection_options() ::
    #{ 'redirectBase' => binary(),
       'redirectUri' => binary(),
       'emailAddress' => binary(),
       'state' => binary()
     }.

encode(#{ 'redirectBase' := RedirectBase,
          'redirectUri' := RedirectUri,
          'emailAddress' := EmailAddress,
          'state' := State
        }) ->
    #{ 'redirectBase' => RedirectBase,
       'redirectUri' => RedirectUri,
       'emailAddress' => EmailAddress,
       'state' => State
     }.
