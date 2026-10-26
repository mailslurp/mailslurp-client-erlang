-module(maislurp-client-erlang_device_preview_share_link_dto).

-export([encode/1]).

-export_type([maislurp-client-erlang_device_preview_share_link_dto/0]).

-type maislurp-client-erlang_device_preview_share_link_dto() ::
    #{ 'id' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'runId' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'tokenPrefix' := binary(),
       'token' => binary(),
       'shareUrl' => binary(),
       'label' => binary(),
       'expiresAt' => maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'revokedAt' => maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'lastAccessedAt' => maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'accessCount' := integer(),
       'createdAt' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'updatedAt' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time()
     }.

encode(#{ 'id' := Id,
          'runId' := RunId,
          'tokenPrefix' := TokenPrefix,
          'token' := Token,
          'shareUrl' := ShareUrl,
          'label' := Label,
          'expiresAt' := ExpiresAt,
          'revokedAt' := RevokedAt,
          'lastAccessedAt' := LastAccessedAt,
          'accessCount' := AccessCount,
          'createdAt' := CreatedAt,
          'updatedAt' := UpdatedAt
        }) ->
    #{ 'id' => Id,
       'runId' => RunId,
       'tokenPrefix' => TokenPrefix,
       'token' => Token,
       'shareUrl' => ShareUrl,
       'label' => Label,
       'expiresAt' => ExpiresAt,
       'revokedAt' => RevokedAt,
       'lastAccessedAt' => LastAccessedAt,
       'accessCount' => AccessCount,
       'createdAt' => CreatedAt,
       'updatedAt' => UpdatedAt
     }.
