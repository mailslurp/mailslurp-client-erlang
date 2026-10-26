-module(maislurp-client-erlang_device_preview_ingest_address_dto).

-export([encode/1]).

-export_type([maislurp-client-erlang_device_preview_ingest_address_dto/0]).

-type maislurp-client-erlang_device_preview_ingest_address_dto() ::
    #{ 'sessionId' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'emailAddress' := binary(),
       'status' := binary(),
       'runId' => maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'sourceFrom' => binary(),
       'sourceTo' => list(),
       'sourceSubject' => binary(),
       'sourceMessageId' => binary(),
       'sourceSizeBytes' => integer(),
       'latestError' => binary(),
       'expiresAt' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'createdAt' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'updatedAt' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time()
     }.

encode(#{ 'sessionId' := SessionId,
          'emailAddress' := EmailAddress,
          'status' := Status,
          'runId' := RunId,
          'sourceFrom' := SourceFrom,
          'sourceTo' := SourceTo,
          'sourceSubject' := SourceSubject,
          'sourceMessageId' := SourceMessageId,
          'sourceSizeBytes' := SourceSizeBytes,
          'latestError' := LatestError,
          'expiresAt' := ExpiresAt,
          'createdAt' := CreatedAt,
          'updatedAt' := UpdatedAt
        }) ->
    #{ 'sessionId' => SessionId,
       'emailAddress' => EmailAddress,
       'status' => Status,
       'runId' => RunId,
       'sourceFrom' => SourceFrom,
       'sourceTo' => SourceTo,
       'sourceSubject' => SourceSubject,
       'sourceMessageId' => SourceMessageId,
       'sourceSizeBytes' => SourceSizeBytes,
       'latestError' => LatestError,
       'expiresAt' => ExpiresAt,
       'createdAt' => CreatedAt,
       'updatedAt' => UpdatedAt
     }.
