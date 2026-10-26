-module(maislurp-client-erlang_domain_region_information).

-export([encode/1]).

-export_type([maislurp-client-erlang_domain_region_information/0]).

-type maislurp-client-erlang_domain_region_information() ::
    #{ 'domainName' := binary(),
       'verified' := boolean(),
       'domainType' := binary(),
       'accountRegion' => binary(),
       'creationEnabled' := boolean(),
       'sendingEnabled' := boolean(),
       'active' := boolean()
     }.

encode(#{ 'domainName' := DomainName,
          'verified' := Verified,
          'domainType' := DomainType,
          'accountRegion' := AccountRegion,
          'creationEnabled' := CreationEnabled,
          'sendingEnabled' := SendingEnabled,
          'active' := Active
        }) ->
    #{ 'domainName' => DomainName,
       'verified' => Verified,
       'domainType' => DomainType,
       'accountRegion' => AccountRegion,
       'creationEnabled' => CreationEnabled,
       'sendingEnabled' => SendingEnabled,
       'active' => Active
     }.
