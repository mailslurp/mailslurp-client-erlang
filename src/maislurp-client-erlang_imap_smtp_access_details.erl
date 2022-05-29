-module(maislurp-client-erlang_imap_smtp_access_details).

-export([encode/1]).

-export_type([maislurp-client-erlang_imap_smtp_access_details/0]).

-type maislurp-client-erlang_imap_smtp_access_details() ::
    #{ 'smtpServerHost' := binary(),
       'smtpServerPort' := integer(),
       'smtpUsername' := binary(),
       'smtpPassword' := binary(),
       'imapServerHost' := binary(),
       'imapServerPort' := integer(),
       'imapUsername' := binary(),
       'imapPassword' := binary()
     }.

encode(#{ 'smtpServerHost' := SmtpServerHost,
          'smtpServerPort' := SmtpServerPort,
          'smtpUsername' := SmtpUsername,
          'smtpPassword' := SmtpPassword,
          'imapServerHost' := ImapServerHost,
          'imapServerPort' := ImapServerPort,
          'imapUsername' := ImapUsername,
          'imapPassword' := ImapPassword
        }) ->
    #{ 'smtpServerHost' => SmtpServerHost,
       'smtpServerPort' => SmtpServerPort,
       'smtpUsername' => SmtpUsername,
       'smtpPassword' => SmtpPassword,
       'imapServerHost' => ImapServerHost,
       'imapServerPort' => ImapServerPort,
       'imapUsername' => ImapUsername,
       'imapPassword' => ImapPassword
     }.
