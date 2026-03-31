-module(maislurp-client-erlang_connector_provider_settings_dto).

-export([encode/1]).

-export_type([maislurp-client-erlang_connector_provider_settings_dto/0]).

-type maislurp-client-erlang_connector_provider_settings_dto() ::
    #{ 'googleSettings' := maislurp-client-erlang_provider_settings:maislurp-client-erlang_provider_settings(),
       'microsoftSettings' := maislurp-client-erlang_provider_settings:maislurp-client-erlang_provider_settings()
     }.

encode(#{ 'googleSettings' := GoogleSettings,
          'microsoftSettings' := MicrosoftSettings
        }) ->
    #{ 'googleSettings' => GoogleSettings,
       'microsoftSettings' => MicrosoftSettings
     }.
