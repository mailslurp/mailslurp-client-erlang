-module(maislurp-client-erlang_webhook_email_read_payload).

-export([encode/1]).

-export_type([maislurp-client-erlang_webhook_email_read_payload/0]).

-type maislurp-client-erlang_webhook_email_read_payload() ::
    #{ 'createdAt' => maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'emailId' => maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'emailIsRead' => boolean(),
       'eventName' => binary(),
       'inboxId' => maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'messageId' => binary(),
       'webhookId' => maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'webhookName' => binary()
     }.

encode(#{ 'createdAt' := CreatedAt,
          'emailId' := EmailId,
          'emailIsRead' := EmailIsRead,
          'eventName' := EventName,
          'inboxId' := InboxId,
          'messageId' := MessageId,
          'webhookId' := WebhookId,
          'webhookName' := WebhookName
        }) ->
    #{ 'createdAt' => CreatedAt,
       'emailId' => EmailId,
       'emailIsRead' => EmailIsRead,
       'eventName' => EventName,
       'inboxId' => InboxId,
       'messageId' => MessageId,
       'webhookId' => WebhookId,
       'webhookName' => WebhookName
     }.
