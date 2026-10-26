-module(maislurp-client-erlang_device_preview_shared_screenshot_dto).

-export([encode/1]).

-export_type([maislurp-client-erlang_device_preview_shared_screenshot_dto/0]).

-type maislurp-client-erlang_device_preview_shared_screenshot_dto() ::
    #{ 'screenshotId' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'runId' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'targetId' => maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'variant' => binary(),
       'title' => binary(),
       'description' => binary(),
       'isPrimary' := boolean(),
       'displayOrder' := integer(),
       'imageUrl' => binary(),
       'width' => integer(),
       'height' => integer(),
       'createdAt' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'updatedAt' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time()
     }.

encode(#{ 'screenshotId' := ScreenshotId,
          'runId' := RunId,
          'targetId' := TargetId,
          'variant' := Variant,
          'title' := Title,
          'description' := Description,
          'isPrimary' := IsPrimary,
          'displayOrder' := DisplayOrder,
          'imageUrl' := ImageUrl,
          'width' := Width,
          'height' := Height,
          'createdAt' := CreatedAt,
          'updatedAt' := UpdatedAt
        }) ->
    #{ 'screenshotId' => ScreenshotId,
       'runId' => RunId,
       'targetId' => TargetId,
       'variant' => Variant,
       'title' => Title,
       'description' => Description,
       'isPrimary' => IsPrimary,
       'displayOrder' => DisplayOrder,
       'imageUrl' => ImageUrl,
       'width' => Width,
       'height' => Height,
       'createdAt' => CreatedAt,
       'updatedAt' => UpdatedAt
     }.
