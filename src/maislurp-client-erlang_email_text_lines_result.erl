-module(maislurp-client-erlang_email_text_lines_result).

-export([encode/1]).

-export_type([maislurp-client-erlang_email_text_lines_result/0]).

-type maislurp-client-erlang_email_text_lines_result() ::
    #{ 'body' := binary(),
       'lines' := list()
     }.

encode(#{ 'body' := Body,
          'lines' := Lines
        }) ->
    #{ 'body' => Body,
       'lines' => Lines
     }.
