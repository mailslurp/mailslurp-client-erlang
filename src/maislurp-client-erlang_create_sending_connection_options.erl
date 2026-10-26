-module(maislurp-client-erlang_create_sending_connection_options).

-export([encode/1]).

-export_type([maislurp-client-erlang_create_sending_connection_options/0]).

-type maislurp-client-erlang_create_sending_connection_options() ::
    #{ 'name' := binary(),
       'providerPreset' := binary(),
       'provider' := binary(),
       'fromEmail' := binary(),
       'smtp' => maislurp-client-erlang_sending_connection_smtp_options:maislurp-client-erlang_sending_connection_smtp_options(),
       'apiKey' => maislurp-client-erlang_sending_connection_api_key_options:maislurp-client-erlang_sending_connection_api_key_options()
     }.

encode(#{ 'name' := Name,
          'providerPreset' := ProviderPreset,
          'provider' := Provider,
          'fromEmail' := FromEmail,
          'smtp' := Smtp,
          'apiKey' := ApiKey
        }) ->
    #{ 'name' => Name,
       'providerPreset' => ProviderPreset,
       'provider' => Provider,
       'fromEmail' => FromEmail,
       'smtp' => Smtp,
       'apiKey' => ApiKey
     }.
