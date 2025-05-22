-module(maislurp-client-erlang_inline_object).

-export([encode/1]).

-export_type([maislurp-client-erlang_inline_object/0]).

-type maislurp-client-erlang_inline_object() ::
    #{ 'file' := binary()
     }.

encode(#{ 'file' := File
        }) ->
    #{ 'file' => File
     }.
