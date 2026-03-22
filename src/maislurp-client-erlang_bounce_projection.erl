-module(maislurp-client-erlang_bounce_projection).

-export([encode/1]).

-export_type([maislurp-client-erlang_bounce_projection/0]).

-type maislurp-client-erlang_bounce_projection() ::
    #{ 'id' => maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'subject' => binary(),
       'sender' := binary(),
       'createdAt' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'bounceType' => binary(),
       'bounceMta' => binary()
     }.

encode(#{ 'id' := Id,
          'subject' := Subject,
          'sender' := Sender,
          'createdAt' := CreatedAt,
          'bounceType' := BounceType,
          'bounceMta' := BounceMta
        }) ->
    #{ 'id' => Id,
       'subject' => Subject,
       'sender' => Sender,
       'createdAt' => CreatedAt,
       'bounceType' => BounceType,
       'bounceMta' => BounceMta
     }.
