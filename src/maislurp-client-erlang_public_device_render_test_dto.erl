-module(maislurp-client-erlang_public_device_render_test_dto).

-export([encode/1]).

-export_type([maislurp-client-erlang_public_device_render_test_dto/0]).

-type maislurp-client-erlang_public_device_render_test_dto() ::
    #{ 'id' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'emailAddress' := binary(),
       'status' := binary(),
       'expiresAt' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'target' := binary(),
       'previewMode' := binary(),
       'sourceFrom' => binary(),
       'sourceSubject' => binary(),
       'senderDomain' => binary(),
       'runId' => maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'shareUrl' => binary(),
       'redirectUrl' => binary(),
       'freeLimitReached' := boolean(),
       'failureCode' => binary(),
       'failureMessage' => binary()
     }.

encode(#{ 'id' := Id,
          'emailAddress' := EmailAddress,
          'status' := Status,
          'expiresAt' := ExpiresAt,
          'target' := Target,
          'previewMode' := PreviewMode,
          'sourceFrom' := SourceFrom,
          'sourceSubject' := SourceSubject,
          'senderDomain' := SenderDomain,
          'runId' := RunId,
          'shareUrl' := ShareUrl,
          'redirectUrl' := RedirectUrl,
          'freeLimitReached' := FreeLimitReached,
          'failureCode' := FailureCode,
          'failureMessage' := FailureMessage
        }) ->
    #{ 'id' => Id,
       'emailAddress' => EmailAddress,
       'status' => Status,
       'expiresAt' => ExpiresAt,
       'target' => Target,
       'previewMode' => PreviewMode,
       'sourceFrom' => SourceFrom,
       'sourceSubject' => SourceSubject,
       'senderDomain' => SenderDomain,
       'runId' => RunId,
       'shareUrl' => ShareUrl,
       'redirectUrl' => RedirectUrl,
       'freeLimitReached' => FreeLimitReached,
       'failureCode' => FailureCode,
       'failureMessage' => FailureMessage
     }.
