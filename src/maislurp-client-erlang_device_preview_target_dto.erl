-module(maislurp-client-erlang_device_preview_target_dto).

-export([encode/1]).

-export_type([maislurp-client-erlang_device_preview_target_dto/0]).

-type maislurp-client-erlang_device_preview_target_dto() ::
    #{ 'id' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'runId' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'provider' => binary(),
       'clientProfile' => binary(),
       'deviceType' => binary(),
       'browserFamily' => binary(),
       'platform' => binary(),
       'colorScheme' => binary(),
       'status' => binary(),
       'failureCode' => binary(),
       'primaryScreenshotId' => maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'createdAt' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'updatedAt' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time()
     }.

encode(#{ 'id' := Id,
          'runId' := RunId,
          'provider' := Provider,
          'clientProfile' := ClientProfile,
          'deviceType' := DeviceType,
          'browserFamily' := BrowserFamily,
          'platform' := Platform,
          'colorScheme' := ColorScheme,
          'status' := Status,
          'failureCode' := FailureCode,
          'primaryScreenshotId' := PrimaryScreenshotId,
          'createdAt' := CreatedAt,
          'updatedAt' := UpdatedAt
        }) ->
    #{ 'id' => Id,
       'runId' => RunId,
       'provider' => Provider,
       'clientProfile' => ClientProfile,
       'deviceType' => DeviceType,
       'browserFamily' => BrowserFamily,
       'platform' => Platform,
       'colorScheme' => ColorScheme,
       'status' => Status,
       'failureCode' => FailureCode,
       'primaryScreenshotId' => PrimaryScreenshotId,
       'createdAt' => CreatedAt,
       'updatedAt' => UpdatedAt
     }.
