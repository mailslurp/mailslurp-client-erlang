-module(maislurp-client-erlang_validation_message).

-export([encode/1]).

-export_type([maislurp-client-erlang_validation_message/0]).

-type maislurp-client-erlang_validation_message() ::
    #{ 'lineNumber' => integer(),
       'message' => binary()
     }.

encode(#{ 'lineNumber' := LineNumber,
          'message' := Message
        }) ->
    #{ 'lineNumber' => LineNumber,
       'message' => Message
     }.
