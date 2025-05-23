-module(maislurp-client-erlang_connector_imap_connection_dto).

-export([encode/1]).

-export_type([maislurp-client-erlang_connector_imap_connection_dto/0]).

-type maislurp-client-erlang_connector_imap_connection_dto() ::
    #{ 'connectorId' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'imapHost' := binary(),
       'imapPort' => integer(),
       'imapUsername' => binary(),
       'imapPassword' => binary(),
       'imapSsl' => boolean(),
       'selectFolder' => binary(),
       'searchTerms' => binary(),
       'startTls' => boolean(),
       'proxyHost' => binary(),
       'proxyPort' => integer(),
       'proxyEnabled' => boolean(),
       'localHostName' => binary(),
       'mechanisms' => list(),
       'sslProtocols' => list(),
       'sslTrust' => binary(),
       'enabled' => boolean(),
       'createdAt' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'id' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid()
     }.

encode(#{ 'connectorId' := ConnectorId,
          'imapHost' := ImapHost,
          'imapPort' := ImapPort,
          'imapUsername' := ImapUsername,
          'imapPassword' := ImapPassword,
          'imapSsl' := ImapSsl,
          'selectFolder' := SelectFolder,
          'searchTerms' := SearchTerms,
          'startTls' := StartTls,
          'proxyHost' := ProxyHost,
          'proxyPort' := ProxyPort,
          'proxyEnabled' := ProxyEnabled,
          'localHostName' := LocalHostName,
          'mechanisms' := Mechanisms,
          'sslProtocols' := SslProtocols,
          'sslTrust' := SslTrust,
          'enabled' := Enabled,
          'createdAt' := CreatedAt,
          'id' := Id
        }) ->
    #{ 'connectorId' => ConnectorId,
       'imapHost' => ImapHost,
       'imapPort' => ImapPort,
       'imapUsername' => ImapUsername,
       'imapPassword' => ImapPassword,
       'imapSsl' => ImapSsl,
       'selectFolder' => SelectFolder,
       'searchTerms' => SearchTerms,
       'startTls' => StartTls,
       'proxyHost' => ProxyHost,
       'proxyPort' => ProxyPort,
       'proxyEnabled' => ProxyEnabled,
       'localHostName' => LocalHostName,
       'mechanisms' => Mechanisms,
       'sslProtocols' => SslProtocols,
       'sslTrust' => SslTrust,
       'enabled' => Enabled,
       'createdAt' => CreatedAt,
       'id' => Id
     }.
