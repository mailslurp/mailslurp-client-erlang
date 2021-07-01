-module(maislurp-client-erlang_tracking_pixel_projection).

-export([encode/1]).

-export_type([maislurp-client-erlang_tracking_pixel_projection/0]).

-type maislurp-client-erlang_tracking_pixel_projection() ::
    #{ 'createdAt' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'id' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'name' => binary(),
       'seen' := boolean(),
       'userId' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid()
     }.

encode(#{ 'createdAt' := CreatedAt,
          'id' := Id,
          'name' := Name,
          'seen' := Seen,
          'userId' := UserId
        }) ->
    #{ 'createdAt' => CreatedAt,
       'id' => Id,
       'name' => Name,
       'seen' => Seen,
       'userId' => UserId
     }.
