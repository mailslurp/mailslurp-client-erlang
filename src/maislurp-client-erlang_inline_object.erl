-module(maislurp-client-erlang_inline_object).

-export([encode/1]).

-export_type([maislurp-client-erlang_inline_object/0]).

-type maislurp-client-erlang_inline_object() ::
    #{ 'contentTypeHeader' => binary(),
       'file' := binary()
     }.

encode(#{ 'contentTypeHeader' := ContentTypeHeader,
          'file' := File
        }) ->
    #{ 'contentTypeHeader' => ContentTypeHeader,
       'file' => File
     }.
