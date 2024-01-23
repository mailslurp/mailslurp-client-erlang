-module(maislurp-client-erlang_sms_reply_options).

-export([encode/1]).

-export_type([maislurp-client-erlang_sms_reply_options/0]).

-type maislurp-client-erlang_sms_reply_options() ::
    #{ 'body' := binary()
     }.

encode(#{ 'body' := Body
        }) ->
    #{ 'body' => Body
     }.
