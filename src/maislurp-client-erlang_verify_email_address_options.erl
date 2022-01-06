-module(maislurp-client-erlang_verify_email_address_options).

-export([encode/1]).

-export_type([maislurp-client-erlang_verify_email_address_options/0]).

-type maislurp-client-erlang_verify_email_address_options() ::
    #{ 'mailServerDomain' => binary(),
       'emailAddress' => binary(),
       'senderEmailAddress' => binary(),
       'port' => integer()
     }.

encode(#{ 'mailServerDomain' := MailServerDomain,
          'emailAddress' := EmailAddress,
          'senderEmailAddress' := SenderEmailAddress,
          'port' := Port
        }) ->
    #{ 'mailServerDomain' => MailServerDomain,
       'emailAddress' => EmailAddress,
       'senderEmailAddress' => SenderEmailAddress,
       'port' => Port
     }.
