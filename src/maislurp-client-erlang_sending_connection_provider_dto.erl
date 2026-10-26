-module(maislurp-client-erlang_sending_connection_provider_dto).

-export([encode/1]).

-export_type([maislurp-client-erlang_sending_connection_provider_dto/0]).

-type maislurp-client-erlang_sending_connection_provider_dto() ::
    #{ 'providerPreset' := binary(),
       'provider' := binary(),
       'displayName' := binary(),
       'category' := binary(),
       'availability' := binary(),
       'setupType' := binary(),
       'nativeIntegration' := boolean(),
       'smtpDefaults' => maislurp-client-erlang_sending_connection_smtp_defaults:maislurp-client-erlang_sending_connection_smtp_defaults(),
       'supportedApiRegions' := list(),
       'requiresSendingDomain' := boolean(),
       'setupNotes' := list(),
       'credentialType' := binary(),
       'capabilities' := maislurp-client-erlang_set:maislurp-client-erlang_set()
     }.

encode(#{ 'providerPreset' := ProviderPreset,
          'provider' := Provider,
          'displayName' := DisplayName,
          'category' := Category,
          'availability' := Availability,
          'setupType' := SetupType,
          'nativeIntegration' := NativeIntegration,
          'smtpDefaults' := SmtpDefaults,
          'supportedApiRegions' := SupportedApiRegions,
          'requiresSendingDomain' := RequiresSendingDomain,
          'setupNotes' := SetupNotes,
          'credentialType' := CredentialType,
          'capabilities' := Capabilities
        }) ->
    #{ 'providerPreset' => ProviderPreset,
       'provider' => Provider,
       'displayName' => DisplayName,
       'category' => Category,
       'availability' => Availability,
       'setupType' => SetupType,
       'nativeIntegration' => NativeIntegration,
       'smtpDefaults' => SmtpDefaults,
       'supportedApiRegions' => SupportedApiRegions,
       'requiresSendingDomain' => RequiresSendingDomain,
       'setupNotes' => SetupNotes,
       'credentialType' => CredentialType,
       'capabilities' => Capabilities
     }.
