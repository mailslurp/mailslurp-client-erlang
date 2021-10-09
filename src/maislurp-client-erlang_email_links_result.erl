-module(maislurp-client-erlang_email_links_result).

-export([encode/1]).

-export_type([maislurp-client-erlang_email_links_result/0]).

-type maislurp-client-erlang_email_links_result() ::
    #{ 'body' := binary(),
       'links' := list()
     }.

encode(#{ 'body' := Body,
          'links' := Links
        }) ->
    #{ 'body' => Body,
       'links' => Links
     }.
