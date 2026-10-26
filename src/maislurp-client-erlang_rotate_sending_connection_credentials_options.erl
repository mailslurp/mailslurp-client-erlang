-module(maislurp-client-erlang_rotate_sending_connection_credentials_options).

-export([encode/1]).

-export_type([maislurp-client-erlang_rotate_sending_connection_credentials_options/0]).

-type maislurp-client-erlang_rotate_sending_connection_credentials_options() ::
    #{ 'smtp' => maislurp-client-erlang_sending_connection_smtp_options:maislurp-client-erlang_sending_connection_smtp_options(),
       'apiKey' => maislurp-client-erlang_sending_connection_api_key_options:maislurp-client-erlang_sending_connection_api_key_options()
     }.

encode(#{ 'smtp' := Smtp,
          'apiKey' := ApiKey
        }) ->
    #{ 'smtp' => Smtp,
       'apiKey' => ApiKey
     }.
