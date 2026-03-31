-module(maislurp-client-erlang_check_email_body_results).

-export([encode/1]).

-export_type([maislurp-client-erlang_check_email_body_results/0]).

-type maislurp-client-erlang_check_email_body_results() ::
    #{ 'hasIssues' := boolean(),
       'linkIssues' := list(),
       'imageIssues' := list(),
       'spellingIssues' := list()
     }.

encode(#{ 'hasIssues' := HasIssues,
          'linkIssues' := LinkIssues,
          'imageIssues' := ImageIssues,
          'spellingIssues' := SpellingIssues
        }) ->
    #{ 'hasIssues' => HasIssues,
       'linkIssues' => LinkIssues,
       'imageIssues' => ImageIssues,
       'spellingIssues' => SpellingIssues
     }.
