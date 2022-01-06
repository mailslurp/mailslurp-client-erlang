-module(maislurp-client-erlang_update_inbox_options).

-export([encode/1]).

-export_type([maislurp-client-erlang_update_inbox_options/0]).

-type maislurp-client-erlang_update_inbox_options() ::
    #{ 'name' => binary(),
       'description' => binary(),
       'tags' => maislurp-client-erlang_set:maislurp-client-erlang_set(),
       'expiresAt' => maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'favourite' => boolean()
     }.

encode(#{ 'name' := Name,
          'description' := Description,
          'tags' := Tags,
          'expiresAt' := ExpiresAt,
          'favourite' := Favourite
        }) ->
    #{ 'name' => Name,
       'description' => Description,
       'tags' => Tags,
       'expiresAt' => ExpiresAt,
       'favourite' => Favourite
     }.
