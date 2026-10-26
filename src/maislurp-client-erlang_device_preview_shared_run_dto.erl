-module(maislurp-client-erlang_device_preview_shared_run_dto).

-export([encode/1]).

-export_type([maislurp-client-erlang_device_preview_shared_run_dto/0]).

-type maislurp-client-erlang_device_preview_shared_run_dto() ::
    #{ 'runId' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'sourceType' := binary(),
       'sourceAlias' => binary(),
       'sourceSubject' => binary(),
       'sourceFrom' => binary(),
       'sourceTo' => list(),
       'sourceRecipientEmailAddress' => binary(),
       'sourceRecipientLocalPart' => binary(),
       'sourceProfileLocalPart' => binary(),
       'sourceProfileDisplayName' => binary(),
       'status' := binary(),
       'primaryScreenshotId' => maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'targetCount' := integer(),
       'screenshotCount' := integer(),
       'createdAt' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'updatedAt' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time()
     }.

encode(#{ 'runId' := RunId,
          'sourceType' := SourceType,
          'sourceAlias' := SourceAlias,
          'sourceSubject' := SourceSubject,
          'sourceFrom' := SourceFrom,
          'sourceTo' := SourceTo,
          'sourceRecipientEmailAddress' := SourceRecipientEmailAddress,
          'sourceRecipientLocalPart' := SourceRecipientLocalPart,
          'sourceProfileLocalPart' := SourceProfileLocalPart,
          'sourceProfileDisplayName' := SourceProfileDisplayName,
          'status' := Status,
          'primaryScreenshotId' := PrimaryScreenshotId,
          'targetCount' := TargetCount,
          'screenshotCount' := ScreenshotCount,
          'createdAt' := CreatedAt,
          'updatedAt' := UpdatedAt
        }) ->
    #{ 'runId' => RunId,
       'sourceType' => SourceType,
       'sourceAlias' => SourceAlias,
       'sourceSubject' => SourceSubject,
       'sourceFrom' => SourceFrom,
       'sourceTo' => SourceTo,
       'sourceRecipientEmailAddress' => SourceRecipientEmailAddress,
       'sourceRecipientLocalPart' => SourceRecipientLocalPart,
       'sourceProfileLocalPart' => SourceProfileLocalPart,
       'sourceProfileDisplayName' => SourceProfileDisplayName,
       'status' => Status,
       'primaryScreenshotId' => PrimaryScreenshotId,
       'targetCount' => TargetCount,
       'screenshotCount' => ScreenshotCount,
       'createdAt' => CreatedAt,
       'updatedAt' => UpdatedAt
     }.
