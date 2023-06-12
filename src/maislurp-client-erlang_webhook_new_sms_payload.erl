-module(maislurp-client-erlang_webhook_new_sms_payload).

-export([encode/1]).

-export_type([maislurp-client-erlang_webhook_new_sms_payload/0]).

-type maislurp-client-erlang_webhook_new_sms_payload() ::
    #{ 'messageId' := binary(),
       'webhookId' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'eventName' := binary(),
       'webhookName' => binary(),
       'smsId' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'userId' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'phoneNumber' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'toNumber' := binary(),
       'fromNumber' := binary(),
       'body' := binary(),
       'read' := boolean()
     }.

encode(#{ 'messageId' := MessageId,
          'webhookId' := WebhookId,
          'eventName' := EventName,
          'webhookName' := WebhookName,
          'smsId' := SmsId,
          'userId' := UserId,
          'phoneNumber' := PhoneNumber,
          'toNumber' := ToNumber,
          'fromNumber' := FromNumber,
          'body' := Body,
          'read' := Read
        }) ->
    #{ 'messageId' => MessageId,
       'webhookId' => WebhookId,
       'eventName' => EventName,
       'webhookName' => WebhookName,
       'smsId' => SmsId,
       'userId' => UserId,
       'phoneNumber' => PhoneNumber,
       'toNumber' => ToNumber,
       'fromNumber' => FromNumber,
       'body' => Body,
       'read' => Read
     }.
