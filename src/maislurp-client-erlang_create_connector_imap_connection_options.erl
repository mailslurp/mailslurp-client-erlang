-module(maislurp-client-erlang_create_connector_imap_connection_options).

-export([encode/1]).

-export_type([maislurp-client-erlang_create_connector_imap_connection_options/0]).

-type maislurp-client-erlang_create_connector_imap_connection_options() ::
    #{ 'imapSsl' => boolean(),
       'imapUsername' => binary(),
       'imapPassword' => binary(),
       'selectFolder' => binary(),
       'searchTerms' => binary(),
       'imapPort' => integer(),
       'imapHost' := binary(),
       'enabled' => boolean(),
       'startTls' => boolean(),
       'proxyEnabled' => boolean(),
       'proxyPort' => integer(),
       'proxyHost' => binary(),
       'localHostName' => binary(),
       'mechanisms' => list(),
       'sslTrust' => binary(),
       'sslProtocols' => list()
     }.

encode(#{ 'imapSsl' := ImapSsl,
          'imapUsername' := ImapUsername,
          'imapPassword' := ImapPassword,
          'selectFolder' := SelectFolder,
          'searchTerms' := SearchTerms,
          'imapPort' := ImapPort,
          'imapHost' := ImapHost,
          'enabled' := Enabled,
          'startTls' := StartTls,
          'proxyEnabled' := ProxyEnabled,
          'proxyPort' := ProxyPort,
          'proxyHost' := ProxyHost,
          'localHostName' := LocalHostName,
          'mechanisms' := Mechanisms,
          'sslTrust' := SslTrust,
          'sslProtocols' := SslProtocols
        }) ->
    #{ 'imapSsl' => ImapSsl,
       'imapUsername' => ImapUsername,
       'imapPassword' => ImapPassword,
       'selectFolder' => SelectFolder,
       'searchTerms' => SearchTerms,
       'imapPort' => ImapPort,
       'imapHost' => ImapHost,
       'enabled' => Enabled,
       'startTls' => StartTls,
       'proxyEnabled' => ProxyEnabled,
       'proxyPort' => ProxyPort,
       'proxyHost' => ProxyHost,
       'localHostName' => LocalHostName,
       'mechanisms' => Mechanisms,
       'sslTrust' => SslTrust,
       'sslProtocols' => SslProtocols
     }.
