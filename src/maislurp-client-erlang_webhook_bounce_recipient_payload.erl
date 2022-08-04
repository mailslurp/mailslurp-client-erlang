-module(maislurp-client-erlang_webhook_bounce_recipient_payload).

-export([encode/1]).

-export_type([maislurp-client-erlang_webhook_bounce_recipient_payload/0]).

-type maislurp-client-erlang_webhook_bounce_recipient_payload() ::
    #{ 'messageId' := binary(),
       'webhookId' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'eventName' := binary(),
       'webhookName' => binary(),
       'recipient' := binary()
     }.

encode(#{ 'messageId' := MessageId,
          'webhookId' := WebhookId,
          'eventName' := EventName,
          'webhookName' := WebhookName,
          'recipient' := Recipient
        }) ->
    #{ 'messageId' => MessageId,
       'webhookId' => WebhookId,
       'eventName' => EventName,
       'webhookName' => WebhookName,
       'recipient' => Recipient
     }.
