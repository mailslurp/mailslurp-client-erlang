-module(maislurp-client-erlang_email_content_match_result).

-export([encode/1]).

-export_type([maislurp-client-erlang_email_content_match_result/0]).

-type maislurp-client-erlang_email_content_match_result() ::
    #{ 'pattern' => binary(),
       'matches' => list()
     }.

encode(#{ 'pattern' := Pattern,
          'matches' := Matches
        }) ->
    #{ 'pattern' => Pattern,
       'matches' => Matches
     }.
