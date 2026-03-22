-module(maislurp-client-erlang_sms_send_options).

-export([encode/1]).

-export_type([maislurp-client-erlang_sms_send_options/0]).

-type maislurp-client-erlang_sms_send_options() ::
    #{ 'to' := binary(),
       'body' := binary()
     }.

encode(#{ 'to' := To,
          'body' := Body
        }) ->
    #{ 'to' => To,
       'body' => Body
     }.
