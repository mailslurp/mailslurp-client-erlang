-module(maislurp-client-erlang_webhook_redrive_all_result).

-export([encode/1]).

-export_type([maislurp-client-erlang_webhook_redrive_all_result/0]).

-type maislurp-client-erlang_webhook_redrive_all_result() ::
    #{ 'success' := boolean(),
       'message' => binary()
     }.

encode(#{ 'success' := Success,
          'message' := Message
        }) ->
    #{ 'success' => Success,
       'message' => Message
     }.
