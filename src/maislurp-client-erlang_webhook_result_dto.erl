-module(maislurp-client-erlang_webhook_result_dto).

-export([encode/1]).

-export_type([maislurp-client-erlang_webhook_result_dto/0]).

-type maislurp-client-erlang_webhook_result_dto() ::
    #{ 'createdAt' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'httpMethod' := binary(),
       'id' => maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'inboxId' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'messageId' := binary(),
       'redriveId' => maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'responseBodyExtract' => binary(),
       'responseStatus' => integer(),
       'responseTimeMillis' := integer(),
       'resultType' => binary(),
       'seen' => boolean(),
       'updatedAt' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'userId' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'webhookEvent' := binary(),
       'webhookId' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'webhookUrl' := binary()
     }.

encode(#{ 'createdAt' := CreatedAt,
          'httpMethod' := HttpMethod,
          'id' := Id,
          'inboxId' := InboxId,
          'messageId' := MessageId,
          'redriveId' := RedriveId,
          'responseBodyExtract' := ResponseBodyExtract,
          'responseStatus' := ResponseStatus,
          'responseTimeMillis' := ResponseTimeMillis,
          'resultType' := ResultType,
          'seen' := Seen,
          'updatedAt' := UpdatedAt,
          'userId' := UserId,
          'webhookEvent' := WebhookEvent,
          'webhookId' := WebhookId,
          'webhookUrl' := WebhookUrl
        }) ->
    #{ 'createdAt' => CreatedAt,
       'httpMethod' => HttpMethod,
       'id' => Id,
       'inboxId' => InboxId,
       'messageId' => MessageId,
       'redriveId' => RedriveId,
       'responseBodyExtract' => ResponseBodyExtract,
       'responseStatus' => ResponseStatus,
       'responseTimeMillis' => ResponseTimeMillis,
       'resultType' => ResultType,
       'seen' => Seen,
       'updatedAt' => UpdatedAt,
       'userId' => UserId,
       'webhookEvent' => WebhookEvent,
       'webhookId' => WebhookId,
       'webhookUrl' => WebhookUrl
     }.
