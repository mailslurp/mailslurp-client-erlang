-module(maislurp-client-erlang_bounce_recipient_projection).

-export([encode/1]).

-export_type([maislurp-client-erlang_bounce_recipient_projection/0]).

-type maislurp-client-erlang_bounce_recipient_projection() ::
    #{ 'createdAt' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'sentEmailId' => maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'recipient' := binary(),
       'bounceType' => binary(),
       'action' => binary(),
       'id' => maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'status' => binary()
     }.

encode(#{ 'createdAt' := CreatedAt,
          'sentEmailId' := SentEmailId,
          'recipient' := Recipient,
          'bounceType' := BounceType,
          'action' := Action,
          'id' := Id,
          'status' := Status
        }) ->
    #{ 'createdAt' => CreatedAt,
       'sentEmailId' => SentEmailId,
       'recipient' => Recipient,
       'bounceType' => BounceType,
       'action' => Action,
       'id' => Id,
       'status' => Status
     }.
