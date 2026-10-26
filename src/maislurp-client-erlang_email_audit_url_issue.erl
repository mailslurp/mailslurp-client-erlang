-module(maislurp-client-erlang_email_audit_url_issue).

-export([encode/1]).

-export_type([maislurp-client-erlang_email_audit_url_issue/0]).

-type maislurp-client-erlang_email_audit_url_issue() ::
    #{ 'url' := binary(),
       'statusCode' => integer(),
       'message' := binary()
     }.

encode(#{ 'url' := Url,
          'statusCode' := StatusCode,
          'message' := Message
        }) ->
    #{ 'url' => Url,
       'statusCode' => StatusCode,
       'message' => Message
     }.
