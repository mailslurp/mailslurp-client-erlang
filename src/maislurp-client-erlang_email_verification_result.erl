-module(maislurp-client-erlang_email_verification_result).

-export([encode/1]).

-export_type([maislurp-client-erlang_email_verification_result/0]).

-type maislurp-client-erlang_email_verification_result() ::
    #{ 'domainName' := binary(),
       'emailAddress' := binary(),
       'error' => binary(),
       'isValid' := boolean(),
       'port' := integer()
     }.

encode(#{ 'domainName' := DomainName,
          'emailAddress' := EmailAddress,
          'error' := Error,
          'isValid' := IsValid,
          'port' := Port
        }) ->
    #{ 'domainName' => DomainName,
       'emailAddress' => EmailAddress,
       'error' => Error,
       'isValid' => IsValid,
       'port' => Port
     }.
