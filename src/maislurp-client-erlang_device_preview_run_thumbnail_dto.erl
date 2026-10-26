-module(maislurp-client-erlang_device_preview_run_thumbnail_dto).

-export([encode/1]).

-export_type([maislurp-client-erlang_device_preview_run_thumbnail_dto/0]).

-type maislurp-client-erlang_device_preview_run_thumbnail_dto() ::
    #{ 'screenshotId' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'accessUrl' := binary(),
       'width' => integer(),
       'height' => integer()
     }.

encode(#{ 'screenshotId' := ScreenshotId,
          'accessUrl' := AccessUrl,
          'width' := Width,
          'height' := Height
        }) ->
    #{ 'screenshotId' => ScreenshotId,
       'accessUrl' => AccessUrl,
       'width' => Width,
       'height' => Height
     }.
