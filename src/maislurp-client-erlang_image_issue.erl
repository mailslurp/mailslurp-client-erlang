-module(maislurp-client-erlang_image_issue).

-export([encode/1]).

-export_type([maislurp-client-erlang_image_issue/0]).

-type maislurp-client-erlang_image_issue() ::
    #{ 'url' := binary(),
       'responseStatus' => integer(),
       'severity' := binary(),
       'message' := binary()
     }.

encode(#{ 'url' := Url,
          'responseStatus' := ResponseStatus,
          'severity' := Severity,
          'message' := Message
        }) ->
    #{ 'url' => Url,
       'responseStatus' => ResponseStatus,
       'severity' => Severity,
       'message' => Message
     }.
