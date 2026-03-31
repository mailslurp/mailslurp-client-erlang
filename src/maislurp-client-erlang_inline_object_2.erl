-module(maislurp-client-erlang_inline_object_2).

-export([encode/1]).

-export_type([maislurp-client-erlang_inline_object_2/0]).

-type maislurp-client-erlang_inline_object_2() ::
    #{ 'file' := binary()
     }.

encode(#{ 'file' := File
        }) ->
    #{ 'file' => File
     }.
