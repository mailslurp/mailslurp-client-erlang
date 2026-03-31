-module(maislurp-client-erlang_email_html_dto).

-export([encode/1]).

-export_type([maislurp-client-erlang_email_html_dto/0]).

-type maislurp-client-erlang_email_html_dto() ::
    #{ 'subject' => binary(),
       'body' => binary()
     }.

encode(#{ 'subject' := Subject,
          'body' := Body
        }) ->
    #{ 'subject' => Subject,
       'body' => Body
     }.
