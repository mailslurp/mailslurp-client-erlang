-module(maislurp-client-erlang_template_projection).

-export([encode/1]).

-export_type([maislurp-client-erlang_template_projection/0]).

-type maislurp-client-erlang_template_projection() ::
    #{ 'createdAt' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'id' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'name' := binary(),
       'updatedAt' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'variables' := list()
     }.

encode(#{ 'createdAt' := CreatedAt,
          'id' := Id,
          'name' := Name,
          'updatedAt' := UpdatedAt,
          'variables' := Variables
        }) ->
    #{ 'createdAt' => CreatedAt,
       'id' => Id,
       'name' => Name,
       'updatedAt' => UpdatedAt,
       'variables' => Variables
     }.
