-module(maislurp-client-erlang_phone_number_tags_options).

-export([encode/1]).

-export_type([maislurp-client-erlang_phone_number_tags_options/0]).

-type maislurp-client-erlang_phone_number_tags_options() ::
    #{ 'tags' := list()
     }.

encode(#{ 'tags' := Tags
        }) ->
    #{ 'tags' => Tags
     }.
