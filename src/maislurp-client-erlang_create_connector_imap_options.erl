-module(maislurp-client-erlang_create_connector_imap_options).

-export([encode/1]).

-export_type([maislurp-client-erlang_create_connector_imap_options/0]).

-type maislurp-client-erlang_create_connector_imap_options() ::
    #{ 'host' := binary(),
       'port' := integer(),
       'username' := binary(),
       'password' := binary(),
       'useSSL' := boolean()
     }.

encode(#{ 'host' := Host,
          'port' := Port,
          'username' := Username,
          'password' := Password,
          'useSSL' := UseSSL
        }) ->
    #{ 'host' => Host,
       'port' => Port,
       'username' => Username,
       'password' => Password,
       'useSSL' => UseSSL
     }.
