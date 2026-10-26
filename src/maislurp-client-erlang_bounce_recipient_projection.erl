-module(maislurp-client-erlang_bounce_recipient_projection).

-export([encode/1]).

-export_type([maislurp-client-erlang_bounce_recipient_projection/0]).

-type maislurp-client-erlang_bounce_recipient_projection() ::
    #{ 'id' => maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'status' => binary(),
       'createdAt' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'action' => binary(),
       'recipient' := binary(),
       'bounceType' => binary(),
       'sentEmailId' => maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid()
     }.

encode(#{ 'id' := Id,
          'status' := Status,
          'createdAt' := CreatedAt,
          'action' := Action,
          'recipient' := Recipient,
          'bounceType' := BounceType,
          'sentEmailId' := SentEmailId
        }) ->
    #{ 'id' => Id,
       'status' => Status,
       'createdAt' => CreatedAt,
       'action' => Action,
       'recipient' => Recipient,
       'bounceType' => BounceType,
       'sentEmailId' => SentEmailId
     }.
