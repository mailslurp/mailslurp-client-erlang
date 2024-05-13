-module(maislurp-client-erlang_imap_smtp_access_servers).

-export([encode/1]).

-export_type([maislurp-client-erlang_imap_smtp_access_servers/0]).

-type maislurp-client-erlang_imap_smtp_access_servers() ::
    #{ 'imapServer' := maislurp-client-erlang_server_endpoints:maislurp-client-erlang_server_endpoints(),
       'secureImapServer' := maislurp-client-erlang_server_endpoints:maislurp-client-erlang_server_endpoints(),
       'smtpServer' := maislurp-client-erlang_server_endpoints:maislurp-client-erlang_server_endpoints(),
       'secureSmtpServer' := maislurp-client-erlang_server_endpoints:maislurp-client-erlang_server_endpoints()
     }.

encode(#{ 'imapServer' := ImapServer,
          'secureImapServer' := SecureImapServer,
          'smtpServer' := SmtpServer,
          'secureSmtpServer' := SecureSmtpServer
        }) ->
    #{ 'imapServer' => ImapServer,
       'secureImapServer' => SecureImapServer,
       'smtpServer' => SmtpServer,
       'secureSmtpServer' => SecureSmtpServer
     }.
