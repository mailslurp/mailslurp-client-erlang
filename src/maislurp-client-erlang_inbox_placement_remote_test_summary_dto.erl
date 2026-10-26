-module(maislurp-client-erlang_inbox_placement_remote_test_summary_dto).

-export([encode/1]).

-export_type([maislurp-client-erlang_inbox_placement_remote_test_summary_dto/0]).

-type maislurp-client-erlang_inbox_placement_remote_test_summary_dto() ::
    #{ 'testId' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'mode' := binary(),
       'status' := binary(),
       'reportStatus' := binary(),
       'requestedSegment' := binary(),
       'seedlistProfile' := binary(),
       'senderDomain' => binary(),
       'fromEmail' => binary(),
       'subjectHint' => binary(),
       'startedAt' => maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'expiresAt' => maislurp-client-erlang_date_time:maislurp-client-erlang_date_time()
     }.

encode(#{ 'testId' := TestId,
          'mode' := Mode,
          'status' := Status,
          'reportStatus' := ReportStatus,
          'requestedSegment' := RequestedSegment,
          'seedlistProfile' := SeedlistProfile,
          'senderDomain' := SenderDomain,
          'fromEmail' := FromEmail,
          'subjectHint' := SubjectHint,
          'startedAt' := StartedAt,
          'expiresAt' := ExpiresAt
        }) ->
    #{ 'testId' => TestId,
       'mode' => Mode,
       'status' => Status,
       'reportStatus' => ReportStatus,
       'requestedSegment' => RequestedSegment,
       'seedlistProfile' => SeedlistProfile,
       'senderDomain' => SenderDomain,
       'fromEmail' => FromEmail,
       'subjectHint' => SubjectHint,
       'startedAt' => StartedAt,
       'expiresAt' => ExpiresAt
     }.
