-module(maislurp-client-erlang_webhook_new_ai_transform_result_payload).

-export([encode/1]).

-export_type([maislurp-client-erlang_webhook_new_ai_transform_result_payload/0]).

-type maislurp-client-erlang_webhook_new_ai_transform_result_payload() ::
    #{ 'messageId' := binary(),
       'webhookId' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'eventName' := binary(),
       'webhookName' => binary(),
       'aiTransformResultId' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'userId' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'aiTransformId' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'aiTransformMappingId' => maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'entityId' => maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'entityType' => binary(),
       'result' => binary()
     }.

encode(#{ 'messageId' := MessageId,
          'webhookId' := WebhookId,
          'eventName' := EventName,
          'webhookName' := WebhookName,
          'aiTransformResultId' := AiTransformResultId,
          'userId' := UserId,
          'aiTransformId' := AiTransformId,
          'aiTransformMappingId' := AiTransformMappingId,
          'entityId' := EntityId,
          'entityType' := EntityType,
          'result' := Result
        }) ->
    #{ 'messageId' => MessageId,
       'webhookId' => WebhookId,
       'eventName' => EventName,
       'webhookName' => WebhookName,
       'aiTransformResultId' => AiTransformResultId,
       'userId' => UserId,
       'aiTransformId' => AiTransformId,
       'aiTransformMappingId' => AiTransformMappingId,
       'entityId' => EntityId,
       'entityType' => EntityType,
       'result' => Result
     }.
