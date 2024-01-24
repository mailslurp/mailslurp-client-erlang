-module(maislurp-client-erlang_email_content_part_result).

-export([encode/1]).

-export_type([maislurp-client-erlang_email_content_part_result/0]).

-type maislurp-client-erlang_email_content_part_result() ::
    #{ 'content' => binary()
     }.

encode(#{ 'content' := Content
        }) ->
    #{ 'content' => Content
     }.
