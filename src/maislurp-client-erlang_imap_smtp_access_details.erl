-module(maislurp-client-erlang_imap_smtp_access_details).

-export([encode/1]).

-export_type([maislurp-client-erlang_imap_smtp_access_details/0]).

-type maislurp-client-erlang_imap_smtp_access_details() ::
    #{ 'emailAddress' := binary(),
       'secureSmtpServerHost' := binary(),
       'secureSmtpServerPort' := integer(),
       'secureSmtpUsername' := binary(),
       'secureSmtpPassword' := binary(),
       'smtpServerHost' := binary(),
       'smtpServerPort' := integer(),
       'smtpUsername' := binary(),
       'smtpPassword' := binary(),
       'secureImapServerHost' := binary(),
       'secureImapServerPort' := integer(),
       'secureImapUsername' := binary(),
       'secureImapPassword' := binary(),
       'imapServerHost' := binary(),
       'imapServerPort' := integer(),
       'imapUsername' := binary(),
       'imapPassword' := binary(),
       'imapMailbox' := binary(),
       'mailFromDomain' => binary()
     }.

encode(#{ 'emailAddress' := EmailAddress,
          'secureSmtpServerHost' := SecureSmtpServerHost,
          'secureSmtpServerPort' := SecureSmtpServerPort,
          'secureSmtpUsername' := SecureSmtpUsername,
          'secureSmtpPassword' := SecureSmtpPassword,
          'smtpServerHost' := SmtpServerHost,
          'smtpServerPort' := SmtpServerPort,
          'smtpUsername' := SmtpUsername,
          'smtpPassword' := SmtpPassword,
          'secureImapServerHost' := SecureImapServerHost,
          'secureImapServerPort' := SecureImapServerPort,
          'secureImapUsername' := SecureImapUsername,
          'secureImapPassword' := SecureImapPassword,
          'imapServerHost' := ImapServerHost,
          'imapServerPort' := ImapServerPort,
          'imapUsername' := ImapUsername,
          'imapPassword' := ImapPassword,
          'imapMailbox' := ImapMailbox,
          'mailFromDomain' := MailFromDomain
        }) ->
    #{ 'emailAddress' => EmailAddress,
       'secureSmtpServerHost' => SecureSmtpServerHost,
       'secureSmtpServerPort' => SecureSmtpServerPort,
       'secureSmtpUsername' => SecureSmtpUsername,
       'secureSmtpPassword' => SecureSmtpPassword,
       'smtpServerHost' => SmtpServerHost,
       'smtpServerPort' => SmtpServerPort,
       'smtpUsername' => SmtpUsername,
       'smtpPassword' => SmtpPassword,
       'secureImapServerHost' => SecureImapServerHost,
       'secureImapServerPort' => SecureImapServerPort,
       'secureImapUsername' => SecureImapUsername,
       'secureImapPassword' => SecureImapPassword,
       'imapServerHost' => ImapServerHost,
       'imapServerPort' => ImapServerPort,
       'imapUsername' => ImapUsername,
       'imapPassword' => ImapPassword,
       'imapMailbox' => ImapMailbox,
       'mailFromDomain' => MailFromDomain
     }.
