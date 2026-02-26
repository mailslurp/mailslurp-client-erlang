-module(maislurp-client-erlang_plus_address_projection).

-export([encode/1]).

-export_type([maislurp-client-erlang_plus_address_projection/0]).

-type maislurp-client-erlang_plus_address_projection() ::
    #{ 'userId' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'inboxId' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'updatedAt' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'createdAt' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'plusAddress' := binary(),
       'fullAddress' := binary(),
       'id' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid()
     }.

encode(#{ 'userId' := UserId,
          'inboxId' := InboxId,
          'updatedAt' := UpdatedAt,
          'createdAt' := CreatedAt,
          'plusAddress' := PlusAddress,
          'fullAddress' := FullAddress,
          'id' := Id
        }) ->
    #{ 'userId' => UserId,
       'inboxId' => InboxId,
       'updatedAt' => UpdatedAt,
       'createdAt' => CreatedAt,
       'plusAddress' => PlusAddress,
       'fullAddress' => FullAddress,
       'id' => Id
     }.
