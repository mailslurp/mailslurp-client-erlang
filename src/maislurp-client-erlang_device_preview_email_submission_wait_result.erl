-module(maislurp-client-erlang_device_preview_email_submission_wait_result).

-export([encode/1]).

-export_type([maislurp-client-erlang_device_preview_email_submission_wait_result/0]).

-type maislurp-client-erlang_device_preview_email_submission_wait_result() ::
    #{ 'timedOut' := boolean(),
       'submissions' := list()
     }.

encode(#{ 'timedOut' := TimedOut,
          'submissions' := Submissions
        }) ->
    #{ 'timedOut' => TimedOut,
       'submissions' => Submissions
     }.
