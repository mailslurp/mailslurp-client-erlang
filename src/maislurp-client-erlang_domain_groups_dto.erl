-module(maislurp-client-erlang_domain_groups_dto).

-export([encode/1]).

-export_type([maislurp-client-erlang_domain_groups_dto/0]).

-type maislurp-client-erlang_domain_groups_dto() ::
    #{ 'domainGroups' := list()
     }.

encode(#{ 'domainGroups' := DomainGroups
        }) ->
    #{ 'domainGroups' => DomainGroups
     }.
