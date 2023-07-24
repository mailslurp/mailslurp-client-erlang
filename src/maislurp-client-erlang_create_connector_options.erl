-module(maislurp-client-erlang_create_connector_options).

-export([encode/1]).

-export_type([maislurp-client-erlang_create_connector_options/0]).

-type maislurp-client-erlang_create_connector_options() ::
    #{ 'connectorType' := binary(),
       'connectorAuthType' := binary(),
       'imapSettings' => maislurp-client-erlang_create_connector_imap_options:maislurp-client-erlang_create_connector_imap_options(),
       'inboxId' => maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'syncEnabled' := boolean(),
       'syncScheduleType' := binary(),
       'syncInterval' => integer()
     }.

encode(#{ 'connectorType' := ConnectorType,
          'connectorAuthType' := ConnectorAuthType,
          'imapSettings' := ImapSettings,
          'inboxId' := InboxId,
          'syncEnabled' := SyncEnabled,
          'syncScheduleType' := SyncScheduleType,
          'syncInterval' := SyncInterval
        }) ->
    #{ 'connectorType' => ConnectorType,
       'connectorAuthType' => ConnectorAuthType,
       'imapSettings' => ImapSettings,
       'inboxId' => InboxId,
       'syncEnabled' => SyncEnabled,
       'syncScheduleType' => SyncScheduleType,
       'syncInterval' => SyncInterval
     }.
