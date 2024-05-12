-module(maislurp-client-erlang_smtp_access_details).

-export([encode/1]).

-export_type([maislurp-client-erlang_smtp_access_details/0]).

-type maislurp-client-erlang_smtp_access_details() ::
    #{ 'secureSmtpServerHost' := binary(),
       'secureSmtpServerPort' := integer(),
       'secureSmtpUsername' := binary(),
       'secureSmtpPassword' := binary(),
       'smtpServerHost' := binary(),
       'smtpServerPort' := integer(),
       'smtpUsername' := binary(),
       'smtpPassword' := binary(),
       'mailFromDomain' => binary()
     }.

encode(#{ 'secureSmtpServerHost' := SecureSmtpServerHost,
          'secureSmtpServerPort' := SecureSmtpServerPort,
          'secureSmtpUsername' := SecureSmtpUsername,
          'secureSmtpPassword' := SecureSmtpPassword,
          'smtpServerHost' := SmtpServerHost,
          'smtpServerPort' := SmtpServerPort,
          'smtpUsername' := SmtpUsername,
          'smtpPassword' := SmtpPassword,
          'mailFromDomain' := MailFromDomain
        }) ->
    #{ 'secureSmtpServerHost' => SecureSmtpServerHost,
       'secureSmtpServerPort' => SecureSmtpServerPort,
       'secureSmtpUsername' => SecureSmtpUsername,
       'secureSmtpPassword' => SecureSmtpPassword,
       'smtpServerHost' => SmtpServerHost,
       'smtpServerPort' => SmtpServerPort,
       'smtpUsername' => SmtpUsername,
       'smtpPassword' => SmtpPassword,
       'mailFromDomain' => MailFromDomain
     }.
