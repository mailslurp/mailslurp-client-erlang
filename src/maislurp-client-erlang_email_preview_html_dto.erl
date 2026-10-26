-module(maislurp-client-erlang_email_preview_html_dto).

-export([encode/1]).

-export_type([maislurp-client-erlang_email_preview_html_dto/0]).

-type maislurp-client-erlang_email_preview_html_dto() ::
    #{ 'subject' => binary(),
       'html' := binary(),
       'linkBehavior' := binary()
     }.

encode(#{ 'subject' := Subject,
          'html' := Html,
          'linkBehavior' := LinkBehavior
        }) ->
    #{ 'subject' => Subject,
       'html' => Html,
       'linkBehavior' => LinkBehavior
     }.
