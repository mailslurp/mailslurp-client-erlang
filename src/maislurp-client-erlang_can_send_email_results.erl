-module(maislurp-client-erlang_can_send_email_results).

-export([encode/1]).

-export_type([maislurp-client-erlang_can_send_email_results/0]).

-type maislurp-client-erlang_can_send_email_results() ::
    #{ 'isSendingPermitted' := boolean(),
       'message' => binary()
     }.

encode(#{ 'isSendingPermitted' := IsSendingPermitted,
          'message' := Message
        }) ->
    #{ 'isSendingPermitted' => IsSendingPermitted,
       'message' => Message
     }.
