-module(maislurp-client-erlang_inline_object_1).

-export([encode/1]).

-export_type([maislurp-client-erlang_inline_object_1/0]).

-type maislurp-client-erlang_inline_object_1() ::
    #{ 'file' := binary()
     }.

encode(#{ 'file' := File
        }) ->
    #{ 'file' => File
     }.
