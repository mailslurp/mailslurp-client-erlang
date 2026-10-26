-module(maislurp-client-erlang_create_phone_pool_options).

-export([encode/1]).

-export_type([maislurp-client-erlang_create_phone_pool_options/0]).

-type maislurp-client-erlang_create_phone_pool_options() ::
    #{ 'name' := binary(),
       'description' => binary()
     }.

encode(#{ 'name' := Name,
          'description' := Description
        }) ->
    #{ 'name' => Name,
       'description' => Description
     }.
