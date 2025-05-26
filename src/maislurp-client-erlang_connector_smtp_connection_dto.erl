-module(maislurp-client-erlang_connector_smtp_connection_dto).

-export([encode/1]).

-export_type([maislurp-client-erlang_connector_smtp_connection_dto/0]).

-type maislurp-client-erlang_connector_smtp_connection_dto() ::
    #{ 'connectorId' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'smtpHost' := binary(),
       'smtpPort' => integer(),
       'smtpUsername' => binary(),
       'smtpPassword' => binary(),
       'smtpSsl' => boolean(),
       'startTls' => boolean(),
       'smtpMechanisms' => list(),
       'localHostName' => binary(),
       'proxyHost' => binary(),
       'proxyPort' => integer(),
       'proxyEnabled' => boolean(),
       'enabled' => boolean(),
       'sslTrust' => binary(),
       'sslProtocols' => list(),
       'createdAt' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'id' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid()
     }.

encode(#{ 'connectorId' := ConnectorId,
          'smtpHost' := SmtpHost,
          'smtpPort' := SmtpPort,
          'smtpUsername' := SmtpUsername,
          'smtpPassword' := SmtpPassword,
          'smtpSsl' := SmtpSsl,
          'startTls' := StartTls,
          'smtpMechanisms' := SmtpMechanisms,
          'localHostName' := LocalHostName,
          'proxyHost' := ProxyHost,
          'proxyPort' := ProxyPort,
          'proxyEnabled' := ProxyEnabled,
          'enabled' := Enabled,
          'sslTrust' := SslTrust,
          'sslProtocols' := SslProtocols,
          'createdAt' := CreatedAt,
          'id' := Id
        }) ->
    #{ 'connectorId' => ConnectorId,
       'smtpHost' => SmtpHost,
       'smtpPort' => SmtpPort,
       'smtpUsername' => SmtpUsername,
       'smtpPassword' => SmtpPassword,
       'smtpSsl' => SmtpSsl,
       'startTls' => StartTls,
       'smtpMechanisms' => SmtpMechanisms,
       'localHostName' => LocalHostName,
       'proxyHost' => ProxyHost,
       'proxyPort' => ProxyPort,
       'proxyEnabled' => ProxyEnabled,
       'enabled' => Enabled,
       'sslTrust' => SslTrust,
       'sslProtocols' => SslProtocols,
       'createdAt' => CreatedAt,
       'id' => Id
     }.
