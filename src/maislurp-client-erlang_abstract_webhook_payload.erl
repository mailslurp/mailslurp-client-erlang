-module(maislurp-client-erlang_abstract_webhook_payload).

-export([encode/1]).

-export_type([maislurp-client-erlang_abstract_webhook_payload/0]).

-type maislurp-client-erlang_abstract_webhook_payload() ::
    #{ 'messageId' := binary(),
       'eventName' := binary(),
       'webhookId' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'webhookName' => binary()
     }.

encode(#{ 'messageId' := MessageId,
          'eventName' := EventName,
          'webhookId' := WebhookId,
          'webhookName' := WebhookName
        }) ->
    #{ 'messageId' => MessageId,
       'eventName' => EventName,
       'webhookId' => WebhookId,
       'webhookName' => WebhookName
     }.
