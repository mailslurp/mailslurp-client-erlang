-module(maislurp-client-erlang_bounce_recipient_projection).

-export([encode/1]).

-export_type([maislurp-client-erlang_bounce_recipient_projection/0]).

-type maislurp-client-erlang_bounce_recipient_projection() ::
    #{ 'sentEmailId' => maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'recipient' := binary(),
       'action' => binary(),
       'bounceType' => binary(),
       'createdAt' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'id' => maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'status' => binary()
     }.

encode(#{ 'sentEmailId' := SentEmailId,
          'recipient' := Recipient,
          'action' := Action,
          'bounceType' := BounceType,
          'createdAt' := CreatedAt,
          'id' := Id,
          'status' := Status
        }) ->
    #{ 'sentEmailId' => SentEmailId,
       'recipient' => Recipient,
       'action' => Action,
       'bounceType' => BounceType,
       'createdAt' => CreatedAt,
       'id' => Id,
       'status' => Status
     }.
