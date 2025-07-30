-module(maislurp-client-erlang_plus_address_projection).

-export([encode/1]).

-export_type([maislurp-client-erlang_plus_address_projection/0]).

-type maislurp-client-erlang_plus_address_projection() ::
    #{ 'inboxId' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'userId' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'updatedAt' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'createdAt' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'plusAddress' := binary(),
       'fullAddress' := binary(),
       'id' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid()
     }.

encode(#{ 'inboxId' := InboxId,
          'userId' := UserId,
          'updatedAt' := UpdatedAt,
          'createdAt' := CreatedAt,
          'plusAddress' := PlusAddress,
          'fullAddress' := FullAddress,
          'id' := Id
        }) ->
    #{ 'inboxId' => InboxId,
       'userId' => UserId,
       'updatedAt' => UpdatedAt,
       'createdAt' => CreatedAt,
       'plusAddress' => PlusAddress,
       'fullAddress' => FullAddress,
       'id' => Id
     }.
