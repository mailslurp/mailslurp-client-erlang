-module(maislurp-client-erlang_forward_email_options).

-export([encode/1]).

-export_type([maislurp-client-erlang_forward_email_options/0]).

-type maislurp-client-erlang_forward_email_options() ::
    #{ 'bcc' => list(),
       'cc' => list(),
       'subject' => binary(),
       'to' => list()
     }.

encode(#{ 'bcc' := Bcc,
          'cc' := Cc,
          'subject' := Subject,
          'to' := To
        }) ->
    #{ 'bcc' => Bcc,
       'cc' => Cc,
       'subject' => Subject,
       'to' => To
     }.
