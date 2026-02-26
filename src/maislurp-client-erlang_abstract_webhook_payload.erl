-module(maislurp-client-erlang_abstract_webhook_payload).

-export([encode/1]).

-export_type([maislurp-client-erlang_abstract_webhook_payload/0]).

-type maislurp-client-erlang_abstract_webhook_payload() ::
    #{ 'eventName' := binary(),
       'messageId' := binary(),
       'webhookId' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'webhookName' => binary()
     }.

encode(#{ 'eventName' := EventName,
          'messageId' := MessageId,
          'webhookId' := WebhookId,
          'webhookName' := WebhookName
        }) ->
    #{ 'eventName' => EventName,
       'messageId' => MessageId,
       'webhookId' => WebhookId,
       'webhookName' => WebhookName
     }.
