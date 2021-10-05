-module(maislurp-client-erlang_bounce_recipient).

-export([encode/1]).

-export_type([maislurp-client-erlang_bounce_recipient/0]).

-type maislurp-client-erlang_bounce_recipient() ::
    #{ 'createdAt' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'id' => maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'recipient' := binary(),
       'updatedAt' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'userId' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid()
     }.

encode(#{ 'createdAt' := CreatedAt,
          'id' := Id,
          'recipient' := Recipient,
          'updatedAt' := UpdatedAt,
          'userId' := UserId
        }) ->
    #{ 'createdAt' => CreatedAt,
       'id' => Id,
       'recipient' => Recipient,
       'updatedAt' => UpdatedAt,
       'userId' => UserId
     }.
