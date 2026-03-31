-module(maislurp-client-erlang_provider_settings).

-export([encode/1]).

-export_type([maislurp-client-erlang_provider_settings/0]).

-type maislurp-client-erlang_provider_settings() ::
    #{ 'mailProvider' := binary(),
       'imapHost' := binary(),
       'imapPort' := integer(),
       'imapSsl' := boolean(),
       'imapStartTls' => boolean(),
       'smtpHost' := binary(),
       'smtpPort' := integer(),
       'smtpSsl' := boolean(),
       'smtpStartTls' => boolean()
     }.

encode(#{ 'mailProvider' := MailProvider,
          'imapHost' := ImapHost,
          'imapPort' := ImapPort,
          'imapSsl' := ImapSsl,
          'imapStartTls' := ImapStartTls,
          'smtpHost' := SmtpHost,
          'smtpPort' := SmtpPort,
          'smtpSsl' := SmtpSsl,
          'smtpStartTls' := SmtpStartTls
        }) ->
    #{ 'mailProvider' => MailProvider,
       'imapHost' => ImapHost,
       'imapPort' => ImapPort,
       'imapSsl' => ImapSsl,
       'imapStartTls' => ImapStartTls,
       'smtpHost' => SmtpHost,
       'smtpPort' => SmtpPort,
       'smtpSsl' => SmtpSsl,
       'smtpStartTls' => SmtpStartTls
     }.
