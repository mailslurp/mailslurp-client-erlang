-module(maislurp-client-erlang_webhook_dto).

-export([encode/1]).

-export_type([maislurp-client-erlang_webhook_dto/0]).

-type maislurp-client-erlang_webhook_dto() ::
    #{ 'id' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'userId' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'basicAuth' := boolean(),
       'name' => binary(),
       'phoneId' => maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'inboxId' => maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'requestBodyTemplate' => binary(),
       'url' := binary(),
       'method' := binary(),
       'payloadJsonSchema' := binary(),
       'createdAt' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'updatedAt' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'eventName' => binary(),
       'requestHeaders' => maislurp-client-erlang_webhook_headers:maislurp-client-erlang_webhook_headers(),
       'aiTransformId' => maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'ignoreInsecureSslCertificates' => boolean(),
       'useStaticIpRange' => boolean(),
       'healthStatus' => binary()
     }.

encode(#{ 'id' := Id,
          'userId' := UserId,
          'basicAuth' := BasicAuth,
          'name' := Name,
          'phoneId' := PhoneId,
          'inboxId' := InboxId,
          'requestBodyTemplate' := RequestBodyTemplate,
          'url' := Url,
          'method' := Method,
          'payloadJsonSchema' := PayloadJsonSchema,
          'createdAt' := CreatedAt,
          'updatedAt' := UpdatedAt,
          'eventName' := EventName,
          'requestHeaders' := RequestHeaders,
          'aiTransformId' := AiTransformId,
          'ignoreInsecureSslCertificates' := IgnoreInsecureSslCertificates,
          'useStaticIpRange' := UseStaticIpRange,
          'healthStatus' := HealthStatus
        }) ->
    #{ 'id' => Id,
       'userId' => UserId,
       'basicAuth' => BasicAuth,
       'name' => Name,
       'phoneId' => PhoneId,
       'inboxId' => InboxId,
       'requestBodyTemplate' => RequestBodyTemplate,
       'url' => Url,
       'method' => Method,
       'payloadJsonSchema' => PayloadJsonSchema,
       'createdAt' => CreatedAt,
       'updatedAt' => UpdatedAt,
       'eventName' => EventName,
       'requestHeaders' => RequestHeaders,
       'aiTransformId' => AiTransformId,
       'ignoreInsecureSslCertificates' => IgnoreInsecureSslCertificates,
       'useStaticIpRange' => UseStaticIpRange,
       'healthStatus' => HealthStatus
     }.
