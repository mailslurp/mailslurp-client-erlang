-module(maislurp-client-erlang_bounce_projection).

-export([encode/1]).

-export_type([maislurp-client-erlang_bounce_projection/0]).

-type maislurp-client-erlang_bounce_projection() ::
    #{ 'id' => maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'createdAt' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'sender' := binary()
     }.

encode(#{ 'id' := Id,
          'createdAt' := CreatedAt,
          'sender' := Sender
        }) ->
    #{ 'id' => Id,
       'createdAt' => CreatedAt,
       'sender' => Sender
     }.
