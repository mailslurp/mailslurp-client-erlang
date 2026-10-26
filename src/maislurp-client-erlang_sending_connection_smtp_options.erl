-module(maislurp-client-erlang_sending_connection_smtp_options).

-export([encode/1]).

-export_type([maislurp-client-erlang_sending_connection_smtp_options/0]).

-type maislurp-client-erlang_sending_connection_smtp_options() ::
    #{ 'host' := binary(),
       'port' := integer(),
       'security' := binary(),
       'username' := binary(),
       'password' := binary()
     }.

encode(#{ 'host' := Host,
          'port' := Port,
          'security' := Security,
          'username' := Username,
          'password' := Password
        }) ->
    #{ 'host' => Host,
       'port' => Port,
       'security' => Security,
       'username' => Username,
       'password' => Password
     }.
