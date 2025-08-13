-module(maislurp-client-erlang_bounce_recipient_projection).

-export([encode/1]).

-export_type([maislurp-client-erlang_bounce_recipient_projection/0]).

-type maislurp-client-erlang_bounce_recipient_projection() ::
    #{ 'sentEmailId' => maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'createdAt' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'recipient' := binary(),
       'bounceType' => binary(),
       'action' => binary(),
       'id' => maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'status' => binary()
     }.

encode(#{ 'sentEmailId' := SentEmailId,
          'createdAt' := CreatedAt,
          'recipient' := Recipient,
          'bounceType' := BounceType,
          'action' := Action,
          'id' := Id,
          'status' := Status
        }) ->
    #{ 'sentEmailId' => SentEmailId,
       'createdAt' => CreatedAt,
       'recipient' => Recipient,
       'bounceType' => BounceType,
       'action' => Action,
       'id' => Id,
       'status' => Status
     }.
