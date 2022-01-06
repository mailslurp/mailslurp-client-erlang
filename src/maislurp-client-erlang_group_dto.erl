-module(maislurp-client-erlang_group_dto).

-export([encode/1]).

-export_type([maislurp-client-erlang_group_dto/0]).

-type maislurp-client-erlang_group_dto() ::
    #{ 'id' => maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'name' => binary(),
       'description' => binary(),
       'createdAt' => maislurp-client-erlang_date_time:maislurp-client-erlang_date_time()
     }.

encode(#{ 'id' := Id,
          'name' := Name,
          'description' := Description,
          'createdAt' := CreatedAt
        }) ->
    #{ 'id' => Id,
       'name' => Name,
       'description' => Description,
       'createdAt' => CreatedAt
     }.
