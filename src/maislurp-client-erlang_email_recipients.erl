-module(maislurp-client-erlang_email_recipients).

-export([encode/1]).

-export_type([maislurp-client-erlang_email_recipients/0]).

-type maislurp-client-erlang_email_recipients() ::
    #{ 'bcc' => list(),
       'cc' => list(),
       'to' => list()
     }.

encode(#{ 'bcc' := Bcc,
          'cc' := Cc,
          'to' := To
        }) ->
    #{ 'bcc' => Bcc,
       'cc' => Cc,
       'to' => To
     }.
