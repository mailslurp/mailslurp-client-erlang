-module(maislurp-client-erlang_bounce_projection).

-export([encode/1]).

-export_type([maislurp-client-erlang_bounce_projection/0]).

-type maislurp-client-erlang_bounce_projection() ::
    #{ 'subject' => binary(),
       'createdAt' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'bounceType' => binary(),
       'sender' := binary(),
       'bounceMta' => binary(),
       'id' => maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid()
     }.

encode(#{ 'subject' := Subject,
          'createdAt' := CreatedAt,
          'bounceType' := BounceType,
          'sender' := Sender,
          'bounceMta' := BounceMta,
          'id' := Id
        }) ->
    #{ 'subject' => Subject,
       'createdAt' => CreatedAt,
       'bounceType' => BounceType,
       'sender' => Sender,
       'bounceMta' => BounceMta,
       'id' => Id
     }.
