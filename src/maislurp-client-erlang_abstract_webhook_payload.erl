-module(maislurp-client-erlang_abstract_webhook_payload).

-export([encode/1]).

-export_type([maislurp-client-erlang_abstract_webhook_payload/0]).

-type maislurp-client-erlang_abstract_webhook_payload() ::
    #{ 'webhookName' => binary(),
       'eventName' := binary(),
       'webhookId' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'messageId' := binary()
     }.

encode(#{ 'webhookName' := WebhookName,
          'eventName' := EventName,
          'webhookId' := WebhookId,
          'messageId' := MessageId
        }) ->
    #{ 'webhookName' => WebhookName,
       'eventName' => EventName,
       'webhookId' => WebhookId,
       'messageId' => MessageId
     }.
