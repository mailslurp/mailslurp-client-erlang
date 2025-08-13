-module(maislurp-client-erlang_entity_favourite_item_projection).

-export([encode/1]).

-export_type([maislurp-client-erlang_entity_favourite_item_projection/0]).

-type maislurp-client-erlang_entity_favourite_item_projection() ::
    #{ 'createdAt' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'entityType' := binary(),
       'name' := binary(),
       'id' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'description' => binary()
     }.

encode(#{ 'createdAt' := CreatedAt,
          'entityType' := EntityType,
          'name' := Name,
          'id' := Id,
          'description' := Description
        }) ->
    #{ 'createdAt' => CreatedAt,
       'entityType' => EntityType,
       'name' => Name,
       'id' => Id,
       'description' => Description
     }.
