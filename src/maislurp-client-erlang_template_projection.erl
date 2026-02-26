-module(maislurp-client-erlang_template_projection).

-export([encode/1]).

-export_type([maislurp-client-erlang_template_projection/0]).

-type maislurp-client-erlang_template_projection() ::
    #{ 'updatedAt' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'createdAt' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'variables' := list(),
       'name' := binary(),
       'id' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid()
     }.

encode(#{ 'updatedAt' := UpdatedAt,
          'createdAt' := CreatedAt,
          'variables' := Variables,
          'name' := Name,
          'id' := Id
        }) ->
    #{ 'updatedAt' => UpdatedAt,
       'createdAt' => CreatedAt,
       'variables' => Variables,
       'name' => Name,
       'id' => Id
     }.
