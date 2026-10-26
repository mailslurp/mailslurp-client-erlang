-module(maislurp-client-erlang_create_deliverability_simulation_job_options).

-export([encode/1]).

-export_type([maislurp-client-erlang_create_deliverability_simulation_job_options/0]).

-type maislurp-client-erlang_create_deliverability_simulation_job_options() ::
    #{ 'senderInboxId' => maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'senderPhoneId' => maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'email' => maislurp-client-erlang_deliverability_simulation_email_options:maislurp-client-erlang_deliverability_simulation_email_options(),
       'sms' => maislurp-client-erlang_deliverability_simulation_sms_options:maislurp-client-erlang_deliverability_simulation_sms_options(),
       'delayMs' => integer(),
       'batchSize' => integer(),
       'sendsPerTarget' => integer()
     }.

encode(#{ 'senderInboxId' := SenderInboxId,
          'senderPhoneId' := SenderPhoneId,
          'email' := Email,
          'sms' := Sms,
          'delayMs' := DelayMs,
          'batchSize' := BatchSize,
          'sendsPerTarget' := SendsPerTarget
        }) ->
    #{ 'senderInboxId' => SenderInboxId,
       'senderPhoneId' => SenderPhoneId,
       'email' => Email,
       'sms' => Sms,
       'delayMs' => DelayMs,
       'batchSize' => BatchSize,
       'sendsPerTarget' => SendsPerTarget
     }.
