-module(maislurp-client-erlang_webhook_result_dto).

-export([encode/1]).

-export_type([maislurp-client-erlang_webhook_result_dto/0]).

-type maislurp-client-erlang_webhook_result_dto() ::
    #{ 'id' => maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'userId' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'inboxId' => maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'webhookId' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'webhookUrl' := binary(),
       'messageId' := binary(),
       'redriveId' => maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'httpMethod' := binary(),
       'webhookEvent' := binary(),
       'responseStatus' => integer(),
       'responseTimeMillis' := integer(),
       'responseBodyExtract' => binary(),
       'resultType' => binary(),
       'createdAt' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'updatedAt' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'seen' := boolean()
     }.

encode(#{ 'id' := Id,
          'userId' := UserId,
          'inboxId' := InboxId,
          'webhookId' := WebhookId,
          'webhookUrl' := WebhookUrl,
          'messageId' := MessageId,
          'redriveId' := RedriveId,
          'httpMethod' := HttpMethod,
          'webhookEvent' := WebhookEvent,
          'responseStatus' := ResponseStatus,
          'responseTimeMillis' := ResponseTimeMillis,
          'responseBodyExtract' := ResponseBodyExtract,
          'resultType' := ResultType,
          'createdAt' := CreatedAt,
          'updatedAt' := UpdatedAt,
          'seen' := Seen
        }) ->
    #{ 'id' => Id,
       'userId' => UserId,
       'inboxId' => InboxId,
       'webhookId' => WebhookId,
       'webhookUrl' => WebhookUrl,
       'messageId' => MessageId,
       'redriveId' => RedriveId,
       'httpMethod' => HttpMethod,
       'webhookEvent' => WebhookEvent,
       'responseStatus' => ResponseStatus,
       'responseTimeMillis' => ResponseTimeMillis,
       'responseBodyExtract' => ResponseBodyExtract,
       'resultType' => ResultType,
       'createdAt' => CreatedAt,
       'updatedAt' => UpdatedAt,
       'seen' => Seen
     }.
