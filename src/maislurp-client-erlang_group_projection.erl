-module(maislurp-client-erlang_group_projection).

-export([encode/1]).

-export_type([maislurp-client-erlang_group_projection/0]).

-type maislurp-client-erlang_group_projection() ::
    #{ 'createdAt' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'description' => binary(),
       'id' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'name' := binary()
     }.

encode(#{ 'createdAt' := CreatedAt,
          'description' := Description,
          'id' := Id,
          'name' := Name
        }) ->
    #{ 'createdAt' => CreatedAt,
       'description' => Description,
       'id' => Id,
       'name' => Name
     }.
