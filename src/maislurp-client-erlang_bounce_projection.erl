-module(maislurp-client-erlang_bounce_projection).

-export([encode/1]).

-export_type([maislurp-client-erlang_bounce_projection/0]).

-type maislurp-client-erlang_bounce_projection() ::
    #{ 'id' => maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'sender' := binary(),
       'subject' => binary(),
       'createdAt' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'bounceMta' => binary(),
       'bounceType' => binary()
     }.

encode(#{ 'id' := Id,
          'sender' := Sender,
          'subject' := Subject,
          'createdAt' := CreatedAt,
          'bounceMta' := BounceMta,
          'bounceType' := BounceType
        }) ->
    #{ 'id' => Id,
       'sender' => Sender,
       'subject' => Subject,
       'createdAt' => CreatedAt,
       'bounceMta' => BounceMta,
       'bounceType' => BounceType
     }.
