-module(maislurp-client-erlang_create_connector_smtp_connection_options).

-export([encode/1]).

-export_type([maislurp-client-erlang_create_connector_smtp_connection_options/0]).

-type maislurp-client-erlang_create_connector_smtp_connection_options() ::
    #{ 'enabled' => boolean(),
       'smtpHost' := binary(),
       'smtpPort' => integer(),
       'smtpSsl' => boolean(),
       'smtpUsername' => binary(),
       'smtpPassword' => binary()
     }.

encode(#{ 'enabled' := Enabled,
          'smtpHost' := SmtpHost,
          'smtpPort' := SmtpPort,
          'smtpSsl' := SmtpSsl,
          'smtpUsername' := SmtpUsername,
          'smtpPassword' := SmtpPassword
        }) ->
    #{ 'enabled' => Enabled,
       'smtpHost' => SmtpHost,
       'smtpPort' => SmtpPort,
       'smtpSsl' => SmtpSsl,
       'smtpUsername' => SmtpUsername,
       'smtpPassword' => SmtpPassword
     }.
