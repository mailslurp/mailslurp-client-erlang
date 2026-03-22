-module(maislurp-client-erlang_deliverability_simulation_job_config_dto).

-export([encode/1]).

-export_type([maislurp-client-erlang_deliverability_simulation_job_config_dto/0]).

-type maislurp-client-erlang_deliverability_simulation_job_config_dto() ::
    #{ 'senderInboxId' => maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'senderPhoneId' => maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'emailSubject' => binary(),
       'emailFromOverride' => binary(),
       'emailBodyTemplate' => binary(),
       'smsBodyTemplate' => binary(),
       'delayMs' := integer(),
       'batchSize' := integer(),
       'sendsPerTarget' := integer()
     }.

encode(#{ 'senderInboxId' := SenderInboxId,
          'senderPhoneId' := SenderPhoneId,
          'emailSubject' := EmailSubject,
          'emailFromOverride' := EmailFromOverride,
          'emailBodyTemplate' := EmailBodyTemplate,
          'smsBodyTemplate' := SmsBodyTemplate,
          'delayMs' := DelayMs,
          'batchSize' := BatchSize,
          'sendsPerTarget' := SendsPerTarget
        }) ->
    #{ 'senderInboxId' => SenderInboxId,
       'senderPhoneId' => SenderPhoneId,
       'emailSubject' => EmailSubject,
       'emailFromOverride' => EmailFromOverride,
       'emailBodyTemplate' => EmailBodyTemplate,
       'smsBodyTemplate' => SmsBodyTemplate,
       'delayMs' => DelayMs,
       'batchSize' => BatchSize,
       'sendsPerTarget' => SendsPerTarget
     }.
