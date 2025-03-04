-module(maislurp-client-erlang_plus_address_projection).

-export([encode/1]).

-export_type([maislurp-client-erlang_plus_address_projection/0]).

-type maislurp-client-erlang_plus_address_projection() ::
    #{ 'createdAt' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'updatedAt' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'userId' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'inboxId' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'plusAddress' := binary(),
       'fullAddress' := binary(),
       'id' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid()
     }.

encode(#{ 'createdAt' := CreatedAt,
          'updatedAt' := UpdatedAt,
          'userId' := UserId,
          'inboxId' := InboxId,
          'plusAddress' := PlusAddress,
          'fullAddress' := FullAddress,
          'id' := Id
        }) ->
    #{ 'createdAt' => CreatedAt,
       'updatedAt' => UpdatedAt,
       'userId' => UserId,
       'inboxId' => InboxId,
       'plusAddress' => PlusAddress,
       'fullAddress' => FullAddress,
       'id' => Id
     }.
