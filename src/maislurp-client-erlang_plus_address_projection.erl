-module(maislurp-client-erlang_plus_address_projection).

-export([encode/1]).

-export_type([maislurp-client-erlang_plus_address_projection/0]).

-type maislurp-client-erlang_plus_address_projection() ::
    #{ 'updatedAt' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'userId' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'inboxId' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'createdAt' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'plusAddress' := binary(),
       'fullAddress' := binary(),
       'id' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid()
     }.

encode(#{ 'updatedAt' := UpdatedAt,
          'userId' := UserId,
          'inboxId' := InboxId,
          'createdAt' := CreatedAt,
          'plusAddress' := PlusAddress,
          'fullAddress' := FullAddress,
          'id' := Id
        }) ->
    #{ 'updatedAt' => UpdatedAt,
       'userId' => UserId,
       'inboxId' => InboxId,
       'createdAt' => CreatedAt,
       'plusAddress' => PlusAddress,
       'fullAddress' => FullAddress,
       'id' => Id
     }.
