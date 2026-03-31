-module(maislurp-client-erlang_create_connector_sync_settings_options).

-export([encode/1]).

-export_type([maislurp-client-erlang_create_connector_sync_settings_options/0]).

-type maislurp-client-erlang_create_connector_sync_settings_options() ::
    #{ 'syncEnabled' => boolean(),
       'syncScheduleType' => binary(),
       'syncInterval' => integer()
     }.

encode(#{ 'syncEnabled' := SyncEnabled,
          'syncScheduleType' := SyncScheduleType,
          'syncInterval' := SyncInterval
        }) ->
    #{ 'syncEnabled' => SyncEnabled,
       'syncScheduleType' => SyncScheduleType,
       'syncInterval' => SyncInterval
     }.
