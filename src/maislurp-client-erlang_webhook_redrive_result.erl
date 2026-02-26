-module(maislurp-client-erlang_webhook_redrive_result).

-export([encode/1]).

-export_type([maislurp-client-erlang_webhook_redrive_result/0]).

-type maislurp-client-erlang_webhook_redrive_result() ::
    #{ 'webhookResultId' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'success' := boolean(),
       'message' => binary()
     }.

encode(#{ 'webhookResultId' := WebhookResultId,
          'success' := Success,
          'message' := Message
        }) ->
    #{ 'webhookResultId' => WebhookResultId,
       'success' => Success,
       'message' => Message
     }.
