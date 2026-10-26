-module(maislurp-client-erlang_sending_connection_dto).

-export([encode/1]).

-export_type([maislurp-client-erlang_sending_connection_dto/0]).

-type maislurp-client-erlang_sending_connection_dto() ::
    #{ 'id' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'name' := binary(),
       'provider' := binary(),
       'providerPreset' := binary(),
       'capabilities' := maislurp-client-erlang_set:maislurp-client-erlang_set(),
       'fromEmail' := binary(),
       'smtpHost' => binary(),
       'smtpPort' => integer(),
       'smtpSecurity' => binary(),
       'usernameHint' => binary(),
       'apiRegion' => binary(),
       'sendingDomain' => binary(),
       'status' := binary(),
       'enabled' := boolean(),
       'lastVerifiedAt' => maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'lastErrorCode' => binary(),
       'createdAt' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'updatedAt' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time()
     }.

encode(#{ 'id' := Id,
          'name' := Name,
          'provider' := Provider,
          'providerPreset' := ProviderPreset,
          'capabilities' := Capabilities,
          'fromEmail' := FromEmail,
          'smtpHost' := SmtpHost,
          'smtpPort' := SmtpPort,
          'smtpSecurity' := SmtpSecurity,
          'usernameHint' := UsernameHint,
          'apiRegion' := ApiRegion,
          'sendingDomain' := SendingDomain,
          'status' := Status,
          'enabled' := Enabled,
          'lastVerifiedAt' := LastVerifiedAt,
          'lastErrorCode' := LastErrorCode,
          'createdAt' := CreatedAt,
          'updatedAt' := UpdatedAt
        }) ->
    #{ 'id' => Id,
       'name' => Name,
       'provider' => Provider,
       'providerPreset' => ProviderPreset,
       'capabilities' => Capabilities,
       'fromEmail' => FromEmail,
       'smtpHost' => SmtpHost,
       'smtpPort' => SmtpPort,
       'smtpSecurity' => SmtpSecurity,
       'usernameHint' => UsernameHint,
       'apiRegion' => ApiRegion,
       'sendingDomain' => SendingDomain,
       'status' => Status,
       'enabled' => Enabled,
       'lastVerifiedAt' => LastVerifiedAt,
       'lastErrorCode' => LastErrorCode,
       'createdAt' => CreatedAt,
       'updatedAt' => UpdatedAt
     }.
