-module(maislurp-client-erlang_bounce_recipient).

-export([encode/1]).

-export_type([maislurp-client-erlang_bounce_recipient/0]).

-type maislurp-client-erlang_bounce_recipient() ::
    #{ 'id' => maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'userId' => maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'recipient' := binary(),
       'createdAt' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'updatedAt' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time()
     }.

encode(#{ 'id' := Id,
          'userId' := UserId,
          'recipient' := Recipient,
          'createdAt' := CreatedAt,
          'updatedAt' := UpdatedAt
        }) ->
    #{ 'id' => Id,
       'userId' => UserId,
       'recipient' => Recipient,
       'createdAt' => CreatedAt,
       'updatedAt' => UpdatedAt
     }.
