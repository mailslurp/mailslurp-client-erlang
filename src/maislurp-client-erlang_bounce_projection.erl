-module(maislurp-client-erlang_bounce_projection).

-export([encode/1]).

-export_type([maislurp-client-erlang_bounce_projection/0]).

-type maislurp-client-erlang_bounce_projection() ::
    #{ 'subject' => binary(),
       'createdAt' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'sender' := binary(),
       'bounceType' => binary(),
       'bounceMta' => binary(),
       'id' => maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid()
     }.

encode(#{ 'subject' := Subject,
          'createdAt' := CreatedAt,
          'sender' := Sender,
          'bounceType' := BounceType,
          'bounceMta' := BounceMta,
          'id' := Id
        }) ->
    #{ 'subject' => Subject,
       'createdAt' => CreatedAt,
       'sender' => Sender,
       'bounceType' => BounceType,
       'bounceMta' => BounceMta,
       'id' => Id
     }.
