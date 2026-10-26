-module(maislurp-client-erlang_inline_object_6).

-export([encode/1]).

-export_type([maislurp-client-erlang_inline_object_6/0]).

-type maislurp-client-erlang_inline_object_6() ::
    #{ 'file' := binary()
     }.

encode(#{ 'file' := File
        }) ->
    #{ 'file' => File
     }.
