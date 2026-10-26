-module(maislurp-client-erlang_sending_connection_api_key_options).

-export([encode/1]).

-export_type([maislurp-client-erlang_sending_connection_api_key_options/0]).

-type maislurp-client-erlang_sending_connection_api_key_options() ::
    #{ 'apiKey' := binary(),
       'sendingDomain' => binary(),
       'region' => binary()
     }.

encode(#{ 'apiKey' := ApiKey,
          'sendingDomain' := SendingDomain,
          'region' := Region
        }) ->
    #{ 'apiKey' => ApiKey,
       'sendingDomain' => SendingDomain,
       'region' => Region
     }.
