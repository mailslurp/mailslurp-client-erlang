-module(maislurp-client-erlang_template_projection).

-export([encode/1]).

-export_type([maislurp-client-erlang_template_projection/0]).

-type maislurp-client-erlang_template_projection() ::
    #{ 'variables' := list(),
       'createdAt' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'updatedAt' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'name' := binary(),
       'id' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid()
     }.

encode(#{ 'variables' := Variables,
          'createdAt' := CreatedAt,
          'updatedAt' := UpdatedAt,
          'name' := Name,
          'id' := Id
        }) ->
    #{ 'variables' => Variables,
       'createdAt' => CreatedAt,
       'updatedAt' => UpdatedAt,
       'name' => Name,
       'id' => Id
     }.
