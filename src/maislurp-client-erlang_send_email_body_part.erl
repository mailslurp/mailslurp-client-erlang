-module(maislurp-client-erlang_send_email_body_part).

-export([encode/1]).

-export_type([maislurp-client-erlang_send_email_body_part/0]).

-type maislurp-client-erlang_send_email_body_part() ::
    #{ 'contentType' := binary(),
       'contentBody' := binary()
     }.

encode(#{ 'contentType' := ContentType,
          'contentBody' := ContentBody
        }) ->
    #{ 'contentType' => ContentType,
       'contentBody' => ContentBody
     }.
