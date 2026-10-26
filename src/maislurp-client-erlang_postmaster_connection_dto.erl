-module(maislurp-client-erlang_postmaster_connection_dto).

-export([encode/1]).

-export_type([maislurp-client-erlang_postmaster_connection_dto/0]).

-type maislurp-client-erlang_postmaster_connection_dto() ::
    #{ 'id' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'userId' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'status' := binary(),
       'connectedEmail' => binary(),
       'scope' => binary(),
       'expiresAt' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'lastSyncedAt' => maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'lastError' => binary(),
       'createdAt' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'updatedAt' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time()
     }.

encode(#{ 'id' := Id,
          'userId' := UserId,
          'status' := Status,
          'connectedEmail' := ConnectedEmail,
          'scope' := Scope,
          'expiresAt' := ExpiresAt,
          'lastSyncedAt' := LastSyncedAt,
          'lastError' := LastError,
          'createdAt' := CreatedAt,
          'updatedAt' := UpdatedAt
        }) ->
    #{ 'id' => Id,
       'userId' => UserId,
       'status' => Status,
       'connectedEmail' => ConnectedEmail,
       'scope' => Scope,
       'expiresAt' => ExpiresAt,
       'lastSyncedAt' => LastSyncedAt,
       'lastError' => LastError,
       'createdAt' => CreatedAt,
       'updatedAt' => UpdatedAt
     }.
