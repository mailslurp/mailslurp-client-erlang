-module(maislurp-client-erlang_postmaster_connection_status_dto).

-export([encode/1]).

-export_type([maislurp-client-erlang_postmaster_connection_status_dto/0]).

-type maislurp-client-erlang_postmaster_connection_status_dto() ::
    #{ 'connected' := boolean(),
       'connection' => maislurp-client-erlang_postmaster_connection_dto:maislurp-client-erlang_postmaster_connection_dto()
     }.

encode(#{ 'connected' := Connected,
          'connection' := Connection
        }) ->
    #{ 'connected' => Connected,
       'connection' => Connection
     }.
