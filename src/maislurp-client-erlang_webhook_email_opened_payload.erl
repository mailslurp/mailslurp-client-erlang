-module(maislurp-client-erlang_webhook_email_opened_payload).

-export([encode/1]).

-export_type([maislurp-client-erlang_webhook_email_opened_payload/0]).

-type maislurp-client-erlang_webhook_email_opened_payload() ::
    #{ 'createdAt' => maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'eventName' => binary(),
       'inboxId' => maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'messageId' => binary(),
       'pixelId' => maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'recipient' => binary(),
       'sentEmailId' => maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'webhookId' => maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'webhookName' => binary()
     }.

encode(#{ 'createdAt' := CreatedAt,
          'eventName' := EventName,
          'inboxId' := InboxId,
          'messageId' := MessageId,
          'pixelId' := PixelId,
          'recipient' := Recipient,
          'sentEmailId' := SentEmailId,
          'webhookId' := WebhookId,
          'webhookName' := WebhookName
        }) ->
    #{ 'createdAt' => CreatedAt,
       'eventName' => EventName,
       'inboxId' => InboxId,
       'messageId' => MessageId,
       'pixelId' => PixelId,
       'recipient' => Recipient,
       'sentEmailId' => SentEmailId,
       'webhookId' => WebhookId,
       'webhookName' => WebhookName
     }.
