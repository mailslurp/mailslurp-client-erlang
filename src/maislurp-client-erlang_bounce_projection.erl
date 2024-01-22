-module(maislurp-client-erlang_bounce_projection).

-export([encode/1]).

-export_type([maislurp-client-erlang_bounce_projection/0]).

-type maislurp-client-erlang_bounce_projection() ::
    #{ 'subject' => binary(),
       'sender' := binary(),
       'bounceType' => binary(),
       'bounceMta' => binary(),
       'createdAt' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'id' => maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid()
     }.

encode(#{ 'subject' := Subject,
          'sender' := Sender,
          'bounceType' := BounceType,
          'bounceMta' := BounceMta,
          'createdAt' := CreatedAt,
          'id' := Id
        }) ->
    #{ 'subject' => Subject,
       'sender' => Sender,
       'bounceType' => BounceType,
       'bounceMta' => BounceMta,
       'createdAt' => CreatedAt,
       'id' => Id
     }.
