-module(maislurp-client-erlang_domain_information).

-export([encode/1]).

-export_type([maislurp-client-erlang_domain_information/0]).

-type maislurp-client-erlang_domain_information() ::
    #{ 'domainName' := binary(),
       'verified' := boolean(),
       'domainType' := binary()
     }.

encode(#{ 'domainName' := DomainName,
          'verified' := Verified,
          'domainType' := DomainType
        }) ->
    #{ 'domainName' => DomainName,
       'verified' => Verified,
       'domainType' => DomainType
     }.
