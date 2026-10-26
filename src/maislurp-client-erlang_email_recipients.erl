-module(maislurp-client-erlang_email_recipients).

-export([encode/1]).

-export_type([maislurp-client-erlang_email_recipients/0]).

-type maislurp-client-erlang_email_recipients() ::
    #{ 'to' => list(),
       'cc' => list(),
       'bcc' => list()
     }.

encode(#{ 'to' := To,
          'cc' := Cc,
          'bcc' := Bcc
        }) ->
    #{ 'to' => To,
       'cc' => Cc,
       'bcc' => Bcc
     }.
