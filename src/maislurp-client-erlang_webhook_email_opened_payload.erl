-module(maislurp-client-erlang_webhook_email_opened_payload).

-export([encode/1]).

-export_type([maislurp-client-erlang_webhook_email_opened_payload/0]).

-type maislurp-client-erlang_webhook_email_opened_payload() ::
    #{ 'messageId' => binary(),
       'webhookId' => maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'eventName' => binary(),
       'webhookName' => binary(),
       'inboxId' => maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'pixelId' => maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'sentEmailId' => maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'recipient' => binary(),
       'createdAt' => maislurp-client-erlang_date_time:maislurp-client-erlang_date_time()
     }.

encode(#{ 'messageId' := MessageId,
          'webhookId' := WebhookId,
          'eventName' := EventName,
          'webhookName' := WebhookName,
          'inboxId' := InboxId,
          'pixelId' := PixelId,
          'sentEmailId' := SentEmailId,
          'recipient' := Recipient,
          'createdAt' := CreatedAt
        }) ->
    #{ 'messageId' => MessageId,
       'webhookId' => WebhookId,
       'eventName' => EventName,
       'webhookName' => WebhookName,
       'inboxId' => InboxId,
       'pixelId' => PixelId,
       'sentEmailId' => SentEmailId,
       'recipient' => Recipient,
       'createdAt' => CreatedAt
     }.
