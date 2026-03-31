-module(maislurp-client-erlang_device_preview_run_dto).

-export([encode/1]).

-export_type([maislurp-client-erlang_device_preview_run_dto/0]).

-type maislurp-client-erlang_device_preview_run_dto() ::
    #{ 'runId' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'emailId' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'status' := binary(),
       'primaryScreenshotId' => maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'requestedProviders' => list(),
       'importedProviders' => list(),
       'warnings' => list(),
       'providerMessageIds' => maps:map(),
       'targetCount' := integer(),
       'screenshotCount' := integer(),
       'createdAt' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'updatedAt' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time()
     }.

encode(#{ 'runId' := RunId,
          'emailId' := EmailId,
          'status' := Status,
          'primaryScreenshotId' := PrimaryScreenshotId,
          'requestedProviders' := RequestedProviders,
          'importedProviders' := ImportedProviders,
          'warnings' := Warnings,
          'providerMessageIds' := ProviderMessageIds,
          'targetCount' := TargetCount,
          'screenshotCount' := ScreenshotCount,
          'createdAt' := CreatedAt,
          'updatedAt' := UpdatedAt
        }) ->
    #{ 'runId' => RunId,
       'emailId' => EmailId,
       'status' => Status,
       'primaryScreenshotId' => PrimaryScreenshotId,
       'requestedProviders' => RequestedProviders,
       'importedProviders' => ImportedProviders,
       'warnings' => Warnings,
       'providerMessageIds' => ProviderMessageIds,
       'targetCount' => TargetCount,
       'screenshotCount' => ScreenshotCount,
       'createdAt' => CreatedAt,
       'updatedAt' => UpdatedAt
     }.
