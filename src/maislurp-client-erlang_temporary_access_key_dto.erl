-module(maislurp-client-erlang_temporary_access_key_dto).

-export([encode/1]).

-export_type([maislurp-client-erlang_temporary_access_key_dto/0]).

-type maislurp-client-erlang_temporary_access_key_dto() ::
    #{ 'key' := binary(),
       'expiresAt' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time()
     }.

encode(#{ 'key' := Key,
          'expiresAt' := ExpiresAt
        }) ->
    #{ 'key' => Key,
       'expiresAt' => ExpiresAt
     }.
