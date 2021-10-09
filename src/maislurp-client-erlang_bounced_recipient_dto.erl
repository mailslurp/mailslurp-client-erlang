-module(maislurp-client-erlang_bounced_recipient_dto).

-export([encode/1]).

-export_type([maislurp-client-erlang_bounced_recipient_dto/0]).

-type maislurp-client-erlang_bounced_recipient_dto() ::
    #{ 'createdAt' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'id' => maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'recipient' := binary(),
       'userId' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid()
     }.

encode(#{ 'createdAt' := CreatedAt,
          'id' := Id,
          'recipient' := Recipient,
          'userId' := UserId
        }) ->
    #{ 'createdAt' => CreatedAt,
       'id' => Id,
       'recipient' => Recipient,
       'userId' => UserId
     }.
