-module(maislurp-client-erlang_basic_auth_options).

-export([encode/1]).

-export_type([maislurp-client-erlang_basic_auth_options/0]).

-type maislurp-client-erlang_basic_auth_options() ::
    #{ 'username' := binary(),
       'password' := binary()
     }.

encode(#{ 'username' := Username,
          'password' := Password
        }) ->
    #{ 'username' => Username,
       'password' => Password
     }.
