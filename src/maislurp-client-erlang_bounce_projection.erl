-module(maislurp-client-erlang_bounce_projection).

-export([encode/1]).

-export_type([maislurp-client-erlang_bounce_projection/0]).

-type maislurp-client-erlang_bounce_projection() ::
    #{ 'sender' := binary(),
       'bounceMta' => binary(),
       'bounceType' => binary(),
       'createdAt' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'subject' => binary(),
       'id' => maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid()
     }.

encode(#{ 'sender' := Sender,
          'bounceMta' := BounceMta,
          'bounceType' := BounceType,
          'createdAt' := CreatedAt,
          'subject' := Subject,
          'id' := Id
        }) ->
    #{ 'sender' => Sender,
       'bounceMta' => BounceMta,
       'bounceType' => BounceType,
       'createdAt' => CreatedAt,
       'subject' => Subject,
       'id' => Id
     }.
