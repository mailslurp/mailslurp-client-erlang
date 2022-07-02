-module(maislurp-client-erlang_send_smtp_envelope_options).

-export([encode/1]).

-export_type([maislurp-client-erlang_send_smtp_envelope_options/0]).

-type maislurp-client-erlang_send_smtp_envelope_options() ::
    #{ 'rcptTo' := list(),
       'mailFrom' := binary(),
       'data' := binary()
     }.

encode(#{ 'rcptTo' := RcptTo,
          'mailFrom' := MailFrom,
          'data' := Data
        }) ->
    #{ 'rcptTo' => RcptTo,
       'mailFrom' => MailFrom,
       'data' => Data
     }.
