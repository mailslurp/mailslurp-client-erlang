-module(maislurp-client-erlang_webhook_redrive_result).

-export([encode/1]).

-export_type([maislurp-client-erlang_webhook_redrive_result/0]).

-type maislurp-client-erlang_webhook_redrive_result() ::
    #{ 'message' => binary(),
       'success' := boolean(),
       'webhookResultId' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid()
     }.

encode(#{ 'message' := Message,
          'success' := Success,
          'webhookResultId' := WebhookResultId
        }) ->
    #{ 'message' => Message,
       'success' => Success,
       'webhookResultId' => WebhookResultId
     }.
