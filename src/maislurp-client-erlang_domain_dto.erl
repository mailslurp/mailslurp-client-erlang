-module(maislurp-client-erlang_domain_dto).

-export([encode/1]).

-export_type([maislurp-client-erlang_domain_dto/0]).

-type maislurp-client-erlang_domain_dto() ::
    #{ 'id' => maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'userId' => maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'domain' => binary(),
       'verificationToken' => binary(),
       'dkimTokens' => list(),
       'domainNameRecords' => list(),
       'catchAllInboxId' => maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'createdAt' => maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'updatedAt' => maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'domainType' => binary(),
       'verified' => boolean()
     }.

encode(#{ 'id' := Id,
          'userId' := UserId,
          'domain' := Domain,
          'verificationToken' := VerificationToken,
          'dkimTokens' := DkimTokens,
          'domainNameRecords' := DomainNameRecords,
          'catchAllInboxId' := CatchAllInboxId,
          'createdAt' := CreatedAt,
          'updatedAt' := UpdatedAt,
          'domainType' := DomainType,
          'verified' := Verified
        }) ->
    #{ 'id' => Id,
       'userId' => UserId,
       'domain' => Domain,
       'verificationToken' => VerificationToken,
       'dkimTokens' => DkimTokens,
       'domainNameRecords' => DomainNameRecords,
       'catchAllInboxId' => CatchAllInboxId,
       'createdAt' => CreatedAt,
       'updatedAt' => UpdatedAt,
       'domainType' => DomainType,
       'verified' => Verified
     }.
