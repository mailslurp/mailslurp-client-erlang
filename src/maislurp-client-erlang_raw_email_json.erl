-module(maislurp-client-erlang_raw_email_json).

-export([encode/1]).

-export_type([maislurp-client-erlang_raw_email_json/0]).

-type maislurp-client-erlang_raw_email_json() ::
    #{ 'content' := binary()
     }.

encode(#{ 'content' := Content
        }) ->
    #{ 'content' => Content
     }.
