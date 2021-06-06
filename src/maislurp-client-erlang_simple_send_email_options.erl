-module(maislurp-client-erlang_simple_send_email_options).

-export([encode/1]).

-export_type([maislurp-client-erlang_simple_send_email_options/0]).

-type maislurp-client-erlang_simple_send_email_options() ::
    #{ 'body' => binary(),
       'senderId' => maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'subject' => binary(),
       'to' => binary()
     }.

encode(#{ 'body' := Body,
          'senderId' := SenderId,
          'subject' := Subject,
          'to' := To
        }) ->
    #{ 'body' => Body,
       'senderId' => SenderId,
       'subject' => Subject,
       'to' => To
     }.
