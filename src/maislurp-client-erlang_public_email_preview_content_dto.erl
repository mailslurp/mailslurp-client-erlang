-module(maislurp-client-erlang_public_email_preview_content_dto).

-export([encode/1]).

-export_type([maislurp-client-erlang_public_email_preview_content_dto/0]).

-type maislurp-client-erlang_public_email_preview_content_dto() ::
    #{ 'html' := binary(),
       'subject' => binary(),
       'from' => binary()
     }.

encode(#{ 'html' := Html,
          'subject' := Subject,
          'from' := From
        }) ->
    #{ 'html' => Html,
       'subject' => Subject,
       'from' => From
     }.
