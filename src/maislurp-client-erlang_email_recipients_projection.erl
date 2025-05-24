-module(maislurp-client-erlang_email_recipients_projection).

-export([encode/1]).

-export_type([maislurp-client-erlang_email_recipients_projection/0]).

-type maislurp-client-erlang_email_recipients_projection() ::
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
