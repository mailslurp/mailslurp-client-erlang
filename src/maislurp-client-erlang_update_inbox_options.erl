-module(maislurp-client-erlang_update_inbox_options).

-export([encode/1]).

-export_type([maislurp-client-erlang_update_inbox_options/0]).

-type maislurp-client-erlang_update_inbox_options() ::
    #{ 'description' => binary(),
       'expiresAt' => maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'favourite' => boolean(),
       'name' => binary(),
       'tags' => list()
     }.

encode(#{ 'description' := Description,
          'expiresAt' := ExpiresAt,
          'favourite' := Favourite,
          'name' := Name,
          'tags' := Tags
        }) ->
    #{ 'description' => Description,
       'expiresAt' => ExpiresAt,
       'favourite' => Favourite,
       'name' => Name,
       'tags' => Tags
     }.
