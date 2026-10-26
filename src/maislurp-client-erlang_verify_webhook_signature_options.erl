-module(maislurp-client-erlang_verify_webhook_signature_options).

-export([encode/1]).

-export_type([maislurp-client-erlang_verify_webhook_signature_options/0]).

-type maislurp-client-erlang_verify_webhook_signature_options() ::
    #{ 'messageId' := binary(),
       'signature' := binary()
     }.

encode(#{ 'messageId' := MessageId,
          'signature' := Signature
        }) ->
    #{ 'messageId' => MessageId,
       'signature' => Signature
     }.
