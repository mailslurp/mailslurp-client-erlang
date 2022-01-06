-module(maislurp-client-erlang_email_verification_result).

-export([encode/1]).

-export_type([maislurp-client-erlang_email_verification_result/0]).

-type maislurp-client-erlang_email_verification_result() ::
    #{ 'domainName' => binary(),
       'port' => integer(),
       'emailAddress' => binary(),
       'error' => binary(),
       'valid' => boolean()
     }.

encode(#{ 'domainName' := DomainName,
          'port' := Port,
          'emailAddress' := EmailAddress,
          'error' := Error,
          'valid' := Valid
        }) ->
    #{ 'domainName' => DomainName,
       'port' => Port,
       'emailAddress' => EmailAddress,
       'error' => Error,
       'valid' => Valid
     }.
