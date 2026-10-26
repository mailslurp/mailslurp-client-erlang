-module(maislurp-client-erlang_update_phone_number_options).

-export([encode/1]).

-export_type([maislurp-client-erlang_update_phone_number_options/0]).

-type maislurp-client-erlang_update_phone_number_options() ::
    #{ 'name' => binary(),
       'description' => binary()
     }.

encode(#{ 'name' := Name,
          'description' := Description
        }) ->
    #{ 'name' => Name,
       'description' => Description
     }.
