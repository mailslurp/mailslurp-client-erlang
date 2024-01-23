-module(maislurp-client-erlang_connector_dto).

-export([encode/1]).

-export_type([maislurp-client-erlang_connector_dto/0]).

-type maislurp-client-erlang_connector_dto() ::
    #{ 'id' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'enabled' := boolean(),
       'userId' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'connectorType' := binary(),
       'connectorAuthType' := binary(),
       'syncEnabled' := boolean(),
       'syncScheduleType' := binary(),
       'syncInterval' => integer(),
       'imapHost' => binary(),
       'imapPort' => integer(),
       'imapUsername' => binary(),
       'imapPassword' => binary(),
       'imapSsl' => boolean(),
       'selectFolder' => binary(),
       'searchTerms' => binary(),
       'createdAt' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time()
     }.

encode(#{ 'id' := Id,
          'enabled' := Enabled,
          'userId' := UserId,
          'connectorType' := ConnectorType,
          'connectorAuthType' := ConnectorAuthType,
          'syncEnabled' := SyncEnabled,
          'syncScheduleType' := SyncScheduleType,
          'syncInterval' := SyncInterval,
          'imapHost' := ImapHost,
          'imapPort' := ImapPort,
          'imapUsername' := ImapUsername,
          'imapPassword' := ImapPassword,
          'imapSsl' := ImapSsl,
          'selectFolder' := SelectFolder,
          'searchTerms' := SearchTerms,
          'createdAt' := CreatedAt
        }) ->
    #{ 'id' => Id,
       'enabled' => Enabled,
       'userId' => UserId,
       'connectorType' => ConnectorType,
       'connectorAuthType' => ConnectorAuthType,
       'syncEnabled' => SyncEnabled,
       'syncScheduleType' => SyncScheduleType,
       'syncInterval' => SyncInterval,
       'imapHost' => ImapHost,
       'imapPort' => ImapPort,
       'imapUsername' => ImapUsername,
       'imapPassword' => ImapPassword,
       'imapSsl' => ImapSsl,
       'selectFolder' => SelectFolder,
       'searchTerms' => SearchTerms,
       'createdAt' => CreatedAt
     }.
