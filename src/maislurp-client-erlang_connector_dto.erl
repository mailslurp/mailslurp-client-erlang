-module(maislurp-client-erlang_connector_dto).

-export([encode/1]).

-export_type([maislurp-client-erlang_connector_dto/0]).

-type maislurp-client-erlang_connector_dto() ::
    #{ 'id' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'name' => binary(),
       'enabled' := boolean(),
       'userId' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'inboxId' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'syncEnabled' := boolean(),
       'syncScheduleType' => binary(),
       'syncInterval' => integer(),
       'hasImapConnection' := boolean(),
       'hasSmtpConnection' := boolean(),
       'createdAt' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time()
     }.

encode(#{ 'id' := Id,
          'name' := Name,
          'enabled' := Enabled,
          'userId' := UserId,
          'inboxId' := InboxId,
          'syncEnabled' := SyncEnabled,
          'syncScheduleType' := SyncScheduleType,
          'syncInterval' := SyncInterval,
          'hasImapConnection' := HasImapConnection,
          'hasSmtpConnection' := HasSmtpConnection,
          'createdAt' := CreatedAt
        }) ->
    #{ 'id' => Id,
       'name' => Name,
       'enabled' => Enabled,
       'userId' => UserId,
       'inboxId' => InboxId,
       'syncEnabled' => SyncEnabled,
       'syncScheduleType' => SyncScheduleType,
       'syncInterval' => SyncInterval,
       'hasImapConnection' => HasImapConnection,
       'hasSmtpConnection' => HasSmtpConnection,
       'createdAt' => CreatedAt
     }.
