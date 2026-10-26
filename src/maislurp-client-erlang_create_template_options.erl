-module(maislurp-client-erlang_create_template_options).

-export([encode/1]).

-export_type([maislurp-client-erlang_create_template_options/0]).

-type maislurp-client-erlang_create_template_options() ::
    #{ 'name' := binary(),
       'content' := binary()
     }.

encode(#{ 'name' := Name,
          'content' := Content
        }) ->
    #{ 'name' => Name,
       'content' => Content
     }.
