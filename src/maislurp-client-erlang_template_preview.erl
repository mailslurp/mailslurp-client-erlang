-module(maislurp-client-erlang_template_preview).

-export([encode/1]).

-export_type([maislurp-client-erlang_template_preview/0]).

-type maislurp-client-erlang_template_preview() ::
    #{ 'preview' := binary()
     }.

encode(#{ 'preview' := Preview
        }) ->
    #{ 'preview' => Preview
     }.
