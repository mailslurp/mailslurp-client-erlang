-module(maislurp-client-erlang_domain_preview).

-export([encode/1]).

-export_type([maislurp-client-erlang_domain_preview/0]).

-type maislurp-client-erlang_domain_preview() ::
    #{ 'catchAllInboxId' => maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'createdAt' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'domain' := binary(),
       'domainType' := binary(),
       'id' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'isVerified' := boolean()
     }.

encode(#{ 'catchAllInboxId' := CatchAllInboxId,
          'createdAt' := CreatedAt,
          'domain' := Domain,
          'domainType' := DomainType,
          'id' := Id,
          'isVerified' := IsVerified
        }) ->
    #{ 'catchAllInboxId' => CatchAllInboxId,
       'createdAt' => CreatedAt,
       'domain' => Domain,
       'domainType' => DomainType,
       'id' => Id,
       'isVerified' => IsVerified
     }.
