-module(maislurp-client-erlang_template_projection).

-export([encode/1]).

-export_type([maislurp-client-erlang_template_projection/0]).

-type maislurp-client-erlang_template_projection() ::
    #{ 'name' := binary(),
       'id' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'createdAt' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'variables' := maislurp-client-erlang_set:maislurp-client-erlang_set(),
       'updatedAt' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time()
     }.

encode(#{ 'name' := Name,
          'id' := Id,
          'createdAt' := CreatedAt,
          'variables' := Variables,
          'updatedAt' := UpdatedAt
        }) ->
    #{ 'name' => Name,
       'id' => Id,
       'createdAt' => CreatedAt,
       'variables' => Variables,
       'updatedAt' => UpdatedAt
     }.
