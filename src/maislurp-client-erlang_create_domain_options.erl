-module(maislurp-client-erlang_create_domain_options).

-export([encode/1]).

-export_type([maislurp-client-erlang_create_domain_options/0]).

-type maislurp-client-erlang_create_domain_options() ::
    #{ 'domain' := binary(),
       'description' => binary(),
       'createdCatchAllInbox' => boolean(),
       'domainType' => binary()
     }.

encode(#{ 'domain' := Domain,
          'description' := Description,
          'createdCatchAllInbox' := CreatedCatchAllInbox,
          'domainType' := DomainType
        }) ->
    #{ 'domain' => Domain,
       'description' => Description,
       'createdCatchAllInbox' => CreatedCatchAllInbox,
       'domainType' => DomainType
     }.
