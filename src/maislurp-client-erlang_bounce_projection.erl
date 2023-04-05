-module(maislurp-client-erlang_bounce_projection).

-export([encode/1]).

-export_type([maislurp-client-erlang_bounce_projection/0]).

-type maislurp-client-erlang_bounce_projection() ::
    #{ 'id' => maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'sender' := binary(),
       'subject' => binary(),
       'createdAt' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'bounceType' => binary(),
       'bounceMta' => binary()
     }.

encode(#{ 'id' := Id,
          'sender' := Sender,
          'subject' := Subject,
          'createdAt' := CreatedAt,
          'bounceType' := BounceType,
          'bounceMta' := BounceMta
        }) ->
    #{ 'id' => Id,
       'sender' => Sender,
       'subject' => Subject,
       'createdAt' => CreatedAt,
       'bounceType' => BounceType,
       'bounceMta' => BounceMta
     }.
