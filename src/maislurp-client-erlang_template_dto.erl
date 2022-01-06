-module(maislurp-client-erlang_template_dto).

-export([encode/1]).

-export_type([maislurp-client-erlang_template_dto/0]).

-type maislurp-client-erlang_template_dto() ::
    #{ 'id' => maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'name' => binary(),
       'variables' => list(),
       'content' => binary(),
       'createdAt' => maislurp-client-erlang_date_time:maislurp-client-erlang_date_time()
     }.

encode(#{ 'id' := Id,
          'name' := Name,
          'variables' := Variables,
          'content' := Content,
          'createdAt' := CreatedAt
        }) ->
    #{ 'id' => Id,
       'name' => Name,
       'variables' => Variables,
       'content' => Content,
       'createdAt' => CreatedAt
     }.
