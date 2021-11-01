-module(maislurp-client-erlang_bounce_projection).

-export([encode/1]).

-export_type([maislurp-client-erlang_bounce_projection/0]).

-type maislurp-client-erlang_bounce_projection() ::
    #{ 'createdAt' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'id' => maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'sender' := binary()
     }.

encode(#{ 'createdAt' := CreatedAt,
          'id' := Id,
          'sender' := Sender
        }) ->
    #{ 'createdAt' => CreatedAt,
       'id' => Id,
       'sender' => Sender
     }.
