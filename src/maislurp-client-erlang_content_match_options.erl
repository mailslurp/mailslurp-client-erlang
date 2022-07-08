-module(maislurp-client-erlang_content_match_options).

-export([encode/1]).

-export_type([maislurp-client-erlang_content_match_options/0]).

-type maislurp-client-erlang_content_match_options() ::
    #{ 'pattern' := binary()
     }.

encode(#{ 'pattern' := Pattern
        }) ->
    #{ 'pattern' => Pattern
     }.
