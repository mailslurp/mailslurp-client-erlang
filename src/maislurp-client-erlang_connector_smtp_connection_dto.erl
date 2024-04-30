-module(maislurp-client-erlang_connector_smtp_connection_dto).

-export([encode/1]).

-export_type([maislurp-client-erlang_connector_smtp_connection_dto/0]).

-type maislurp-client-erlang_connector_smtp_connection_dto() ::
    #{ 'connectorId' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'smtpHost' => binary(),
       'smtpPort' => integer(),
       'smtpUsername' => binary(),
       'smtpPassword' => binary(),
       'smtpSsl' => boolean(),
       'enabled' => boolean(),
       'createdAt' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'id' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid()
     }.

encode(#{ 'connectorId' := ConnectorId,
          'smtpHost' := SmtpHost,
          'smtpPort' := SmtpPort,
          'smtpUsername' := SmtpUsername,
          'smtpPassword' := SmtpPassword,
          'smtpSsl' := SmtpSsl,
          'enabled' := Enabled,
          'createdAt' := CreatedAt,
          'id' := Id
        }) ->
    #{ 'connectorId' => ConnectorId,
       'smtpHost' => SmtpHost,
       'smtpPort' => SmtpPort,
       'smtpUsername' => SmtpUsername,
       'smtpPassword' => SmtpPassword,
       'smtpSsl' => SmtpSsl,
       'enabled' => Enabled,
       'createdAt' => CreatedAt,
       'id' => Id
     }.
