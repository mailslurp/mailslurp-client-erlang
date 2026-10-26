-module(maislurp-client-erlang_inbox_placement_public_test_run_dto).

-export([encode/1]).

-export_type([maislurp-client-erlang_inbox_placement_public_test_run_dto/0]).

-type maislurp-client-erlang_inbox_placement_public_test_run_dto() ::
    #{ 'id' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'status' => binary(),
       'reportStatus' => binary(),
       'requestedSegment' => binary(),
       'seedlistProfile' => binary(),
       'senderDomain' => binary(),
       'fromEmail' => binary(),
       'subjectHint' => binary(),
       'totalTargets' := integer(),
       'matchedTargets' := integer(),
       'inboxTargets' := integer(),
       'spamTargets' := integer(),
       'notReceivedTargets' := integer(),
       'startedAt' => maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'firstMatchAt' => maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'completedAt' => maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'expiresAt' => maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'createdAt' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'updatedAt' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time()
     }.

encode(#{ 'id' := Id,
          'status' := Status,
          'reportStatus' := ReportStatus,
          'requestedSegment' := RequestedSegment,
          'seedlistProfile' := SeedlistProfile,
          'senderDomain' := SenderDomain,
          'fromEmail' := FromEmail,
          'subjectHint' := SubjectHint,
          'totalTargets' := TotalTargets,
          'matchedTargets' := MatchedTargets,
          'inboxTargets' := InboxTargets,
          'spamTargets' := SpamTargets,
          'notReceivedTargets' := NotReceivedTargets,
          'startedAt' := StartedAt,
          'firstMatchAt' := FirstMatchAt,
          'completedAt' := CompletedAt,
          'expiresAt' := ExpiresAt,
          'createdAt' := CreatedAt,
          'updatedAt' := UpdatedAt
        }) ->
    #{ 'id' => Id,
       'status' => Status,
       'reportStatus' => ReportStatus,
       'requestedSegment' => RequestedSegment,
       'seedlistProfile' => SeedlistProfile,
       'senderDomain' => SenderDomain,
       'fromEmail' => FromEmail,
       'subjectHint' => SubjectHint,
       'totalTargets' => TotalTargets,
       'matchedTargets' => MatchedTargets,
       'inboxTargets' => InboxTargets,
       'spamTargets' => SpamTargets,
       'notReceivedTargets' => NotReceivedTargets,
       'startedAt' => StartedAt,
       'firstMatchAt' => FirstMatchAt,
       'completedAt' => CompletedAt,
       'expiresAt' => ExpiresAt,
       'createdAt' => CreatedAt,
       'updatedAt' => UpdatedAt
     }.
