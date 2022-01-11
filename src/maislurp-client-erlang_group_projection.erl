-module(maislurp-client-erlang_group_projection).

-export([encode/1]).

-export_type([maislurp-client-erlang_group_projection/0]).

-type maislurp-client-erlang_group_projection() ::
    #{ 'name' := binary(),
       'id' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'createdAt' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'description' => binary()
     }.

encode(#{ 'name' := Name,
          'id' := Id,
          'createdAt' := CreatedAt,
          'description' := Description
        }) ->
    #{ 'name' => Name,
       'id' => Id,
       'createdAt' => CreatedAt,
       'description' => Description
     }.
