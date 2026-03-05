-module(maislurp-client-erlang_reply_for_sms).

-export([encode/1]).

-export_type([maislurp-client-erlang_reply_for_sms/0]).

-type maislurp-client-erlang_reply_for_sms() ::
    #{ 'reply' => maislurp-client-erlang_sent_sms_dto:maislurp-client-erlang_sent_sms_dto()
     }.

encode(#{ 'reply' := Reply
        }) ->
    #{ 'reply' => Reply
     }.
