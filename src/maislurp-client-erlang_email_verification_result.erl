-module(maislurp-client-erlang_email_verification_result).

-export([encode/1]).

-export_type([maislurp-client-erlang_email_verification_result/0]).

-type maislurp-client-erlang_email_verification_result() ::
    #{ 'domainName' := binary(),
       'port' := integer(),
       'emailAddress' := binary(),
       'isValid' := boolean(),
       'error' => binary()
     }.

encode(#{ 'domainName' := DomainName,
          'port' := Port,
          'emailAddress' := EmailAddress,
          'isValid' := IsValid,
          'error' := Error
        }) ->
    #{ 'domainName' => DomainName,
       'port' => Port,
       'emailAddress' => EmailAddress,
       'isValid' => IsValid,
       'error' => Error
     }.
