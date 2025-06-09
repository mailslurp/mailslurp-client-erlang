-module(maislurp-client-erlang_optional_connector_sync_settings_dto).

-export([encode/1]).

-export_type([maislurp-client-erlang_optional_connector_sync_settings_dto/0]).

-type maislurp-client-erlang_optional_connector_sync_settings_dto() ::
    #{ 'present' := boolean(),
       'result' => maislurp-client-erlang_connector_sync_settings_dto:maislurp-client-erlang_connector_sync_settings_dto()
     }.

encode(#{ 'present' := Present,
          'result' := Result
        }) ->
    #{ 'present' => Present,
       'result' => Result
     }.
