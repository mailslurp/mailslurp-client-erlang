-module(maislurp-client-erlang_create_connector_with_options).

-export([encode/1]).

-export_type([maislurp-client-erlang_create_connector_with_options/0]).

-type maislurp-client-erlang_create_connector_with_options() ::
    #{ 'createConnectorOptions' := maislurp-client-erlang_create_connector_options:maislurp-client-erlang_create_connector_options(),
       'createConnectorImapConnectionOptions' => maislurp-client-erlang_create_connector_imap_connection_options:maislurp-client-erlang_create_connector_imap_connection_options(),
       'createConnectorSmtpConnectionOptions' => maislurp-client-erlang_create_connector_smtp_connection_options:maislurp-client-erlang_create_connector_smtp_connection_options(),
       'createConnectorSyncSettingsOptions' => maislurp-client-erlang_create_connector_sync_settings_options:maislurp-client-erlang_create_connector_sync_settings_options()
     }.

encode(#{ 'createConnectorOptions' := CreateConnectorOptions,
          'createConnectorImapConnectionOptions' := CreateConnectorImapConnectionOptions,
          'createConnectorSmtpConnectionOptions' := CreateConnectorSmtpConnectionOptions,
          'createConnectorSyncSettingsOptions' := CreateConnectorSyncSettingsOptions
        }) ->
    #{ 'createConnectorOptions' => CreateConnectorOptions,
       'createConnectorImapConnectionOptions' => CreateConnectorImapConnectionOptions,
       'createConnectorSmtpConnectionOptions' => CreateConnectorSmtpConnectionOptions,
       'createConnectorSyncSettingsOptions' => CreateConnectorSyncSettingsOptions
     }.
