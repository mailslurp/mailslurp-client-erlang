-module(maislurp-client-erlang_email_signature_parse_result).

-export([encode/1]).

-export_type([maislurp-client-erlang_email_signature_parse_result/0]).

-type maislurp-client-erlang_email_signature_parse_result() ::
    #{ 'present' := boolean(),
       'signature' => maislurp-client-erlang_email_signature:maislurp-client-erlang_email_signature()
     }.

encode(#{ 'present' := Present,
          'signature' := Signature
        }) ->
    #{ 'present' => Present,
       'signature' => Signature
     }.
