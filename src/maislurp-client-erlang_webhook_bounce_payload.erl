-module(maislurp-client-erlang_webhook_bounce_payload).

-export([encode/1]).

-export_type([maislurp-client-erlang_webhook_bounce_payload/0]).

-type maislurp-client-erlang_webhook_bounce_payload() ::
    #{ 'messageId' := binary(),
       'webhookId' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'eventName' := binary(),
       'webhookName' => binary(),
       'bounceId' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'sentToRecipients' => list(),
       'sender' := binary(),
       'bounceRecipients' => list()
     }.

encode(#{ 'messageId' := MessageId,
          'webhookId' := WebhookId,
          'eventName' := EventName,
          'webhookName' := WebhookName,
          'bounceId' := BounceId,
          'sentToRecipients' := SentToRecipients,
          'sender' := Sender,
          'bounceRecipients' := BounceRecipients
        }) ->
    #{ 'messageId' => MessageId,
       'webhookId' => WebhookId,
       'eventName' => EventName,
       'webhookName' => WebhookName,
       'bounceId' => BounceId,
       'sentToRecipients' => SentToRecipients,
       'sender' => Sender,
       'bounceRecipients' => BounceRecipients
     }.
