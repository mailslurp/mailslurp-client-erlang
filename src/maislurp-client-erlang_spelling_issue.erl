-module(maislurp-client-erlang_spelling_issue).

-export([encode/1]).

-export_type([maislurp-client-erlang_spelling_issue/0]).

-type maislurp-client-erlang_spelling_issue() ::
    #{ 'group' := binary(),
       'suggestion' := binary(),
       'severity' := binary(),
       'message' := binary()
     }.

encode(#{ 'group' := Group,
          'suggestion' := Suggestion,
          'severity' := Severity,
          'message' := Message
        }) ->
    #{ 'group' => Group,
       'suggestion' => Suggestion,
       'severity' => Severity,
       'message' => Message
     }.
