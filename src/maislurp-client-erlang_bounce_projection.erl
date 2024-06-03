-module(maislurp-client-erlang_bounce_projection).

-export([encode/1]).

-export_type([maislurp-client-erlang_bounce_projection/0]).

-type maislurp-client-erlang_bounce_projection() ::
    #{ 'createdAt' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'sender' := binary(),
       'bounceType' => binary(),
       'bounceMta' => binary(),
       'subject' => binary(),
       'id' => maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid()
     }.

encode(#{ 'createdAt' := CreatedAt,
          'sender' := Sender,
          'bounceType' := BounceType,
          'bounceMta' := BounceMta,
          'subject' := Subject,
          'id' := Id
        }) ->
    #{ 'createdAt' => CreatedAt,
       'sender' => Sender,
       'bounceType' => BounceType,
       'bounceMta' => BounceMta,
       'subject' => Subject,
       'id' => Id
     }.
