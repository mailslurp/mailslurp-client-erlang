-module(maislurp-client-erlang_forward_email_options).

-export([encode/1]).

-export_type([maislurp-client-erlang_forward_email_options/0]).

-type maislurp-client-erlang_forward_email_options() ::
    #{ 'to' := list(),
       'subject' => binary(),
       'cc' => list(),
       'bcc' => list(),
       'from' => binary(),
       'useInboxName' => boolean(),
       'filterBouncedRecipients' => boolean()
     }.

encode(#{ 'to' := To,
          'subject' := Subject,
          'cc' := Cc,
          'bcc' := Bcc,
          'from' := From,
          'useInboxName' := UseInboxName,
          'filterBouncedRecipients' := FilterBouncedRecipients
        }) ->
    #{ 'to' => To,
       'subject' => Subject,
       'cc' => Cc,
       'bcc' => Bcc,
       'from' => From,
       'useInboxName' => UseInboxName,
       'filterBouncedRecipients' => FilterBouncedRecipients
     }.
