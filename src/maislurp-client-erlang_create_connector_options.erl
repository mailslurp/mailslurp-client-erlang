-module(maislurp-client-erlang_create_connector_options).

-export([encode/1]).

-export_type([maislurp-client-erlang_create_connector_options/0]).

-type maislurp-client-erlang_create_connector_options() ::
    #{ 'syncEnabled' => boolean(),
       'syncScheduleType' => binary(),
       'syncInterval' => integer(),
       'name' => binary(),
       'emailAddress' => binary(),
       'enabled' => boolean()
     }.

encode(#{ 'syncEnabled' := SyncEnabled,
          'syncScheduleType' := SyncScheduleType,
          'syncInterval' := SyncInterval,
          'name' := Name,
          'emailAddress' := EmailAddress,
          'enabled' := Enabled
        }) ->
    #{ 'syncEnabled' => SyncEnabled,
       'syncScheduleType' => SyncScheduleType,
       'syncInterval' => SyncInterval,
       'name' => Name,
       'emailAddress' => EmailAddress,
       'enabled' => Enabled
     }.
