-module(maislurp-client-erlang_create_connector_smtp_connection_options).

-export([encode/1]).

-export_type([maislurp-client-erlang_create_connector_smtp_connection_options/0]).

-type maislurp-client-erlang_create_connector_smtp_connection_options() ::
    #{ 'enabled' => boolean(),
       'smtpHost' := binary(),
       'smtpPort' => integer(),
       'smtpSsl' => boolean(),
       'smtpUsername' => binary(),
       'smtpPassword' => binary(),
       'smtpMechanisms' => list(),
       'startTls' => boolean(),
       'localHostName' => binary(),
       'proxyHost' => binary(),
       'proxyPort' => integer(),
       'proxyEnabled' => boolean(),
       'sslTrust' => binary(),
       'sslProtocols' => list()
     }.

encode(#{ 'enabled' := Enabled,
          'smtpHost' := SmtpHost,
          'smtpPort' := SmtpPort,
          'smtpSsl' := SmtpSsl,
          'smtpUsername' := SmtpUsername,
          'smtpPassword' := SmtpPassword,
          'smtpMechanisms' := SmtpMechanisms,
          'startTls' := StartTls,
          'localHostName' := LocalHostName,
          'proxyHost' := ProxyHost,
          'proxyPort' := ProxyPort,
          'proxyEnabled' := ProxyEnabled,
          'sslTrust' := SslTrust,
          'sslProtocols' := SslProtocols
        }) ->
    #{ 'enabled' => Enabled,
       'smtpHost' => SmtpHost,
       'smtpPort' => SmtpPort,
       'smtpSsl' => SmtpSsl,
       'smtpUsername' => SmtpUsername,
       'smtpPassword' => SmtpPassword,
       'smtpMechanisms' => SmtpMechanisms,
       'startTls' => StartTls,
       'localHostName' => LocalHostName,
       'proxyHost' => ProxyHost,
       'proxyPort' => ProxyPort,
       'proxyEnabled' => ProxyEnabled,
       'sslTrust' => SslTrust,
       'sslProtocols' => SslProtocols
     }.
