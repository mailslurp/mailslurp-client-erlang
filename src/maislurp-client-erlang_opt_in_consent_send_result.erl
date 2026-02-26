-module(maislurp-client-erlang_opt_in_consent_send_result).

-export([encode/1]).

-export_type([maislurp-client-erlang_opt_in_consent_send_result/0]).

-type maislurp-client-erlang_opt_in_consent_send_result() ::
    #{ 'sent' := boolean()
     }.

encode(#{ 'sent' := Sent
        }) ->
    #{ 'sent' => Sent
     }.
