-module(maislurp-client-erlang_simple_send_email_options).

-export([encode/1]).

-export_type([maislurp-client-erlang_simple_send_email_options/0]).

-type maislurp-client-erlang_simple_send_email_options() ::
    #{ 'senderId' => maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'to' => binary(),
       'body' => binary(),
       'subject' => binary()
     }.

encode(#{ 'senderId' := SenderId,
          'to' := To,
          'body' := Body,
          'subject' := Subject
        }) ->
    #{ 'senderId' => SenderId,
       'to' => To,
       'body' => Body,
       'subject' => Subject
     }.
