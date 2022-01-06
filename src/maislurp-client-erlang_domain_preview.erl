-module(maislurp-client-erlang_domain_preview).

-export([encode/1]).

-export_type([maislurp-client-erlang_domain_preview/0]).

-type maislurp-client-erlang_domain_preview() ::
    #{ 'id' => maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'domain' => binary(),
       'catchAllInboxId' => maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'createdAt' => maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'domainType' => binary(),
       'verified' => boolean()
     }.

encode(#{ 'id' := Id,
          'domain' := Domain,
          'catchAllInboxId' := CatchAllInboxId,
          'createdAt' := CreatedAt,
          'domainType' := DomainType,
          'verified' := Verified
        }) ->
    #{ 'id' => Id,
       'domain' => Domain,
       'catchAllInboxId' => CatchAllInboxId,
       'createdAt' => CreatedAt,
       'domainType' => DomainType,
       'verified' => Verified
     }.
