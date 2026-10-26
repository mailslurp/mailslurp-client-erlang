-module(maislurp-client-erlang_verify_webhook_signature_results).

-export([encode/1]).

-export_type([maislurp-client-erlang_verify_webhook_signature_results/0]).

-type maislurp-client-erlang_verify_webhook_signature_results() ::
    #{ 'isValid' := boolean()
     }.

encode(#{ 'isValid' := IsValid
        }) ->
    #{ 'isValid' => IsValid
     }.
