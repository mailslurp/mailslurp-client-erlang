-module(maislurp-client-erlang_domain_dto).

-export([encode/1]).

-export_type([maislurp-client-erlang_domain_dto/0]).

-type maislurp-client-erlang_domain_dto() ::
    #{ 'catchAllInboxId' => maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'createdAt' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'dkimTokens' => list(),
       'domain' => binary(),
       'domainNameRecords' => list(),
       'domainType' => binary(),
       'id' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'isVerified' => boolean(),
       'updatedAt' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'userId' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'verificationToken' => binary()
     }.

encode(#{ 'catchAllInboxId' := CatchAllInboxId,
          'createdAt' := CreatedAt,
          'dkimTokens' := DkimTokens,
          'domain' := Domain,
          'domainNameRecords' := DomainNameRecords,
          'domainType' := DomainType,
          'id' := Id,
          'isVerified' := IsVerified,
          'updatedAt' := UpdatedAt,
          'userId' := UserId,
          'verificationToken' := VerificationToken
        }) ->
    #{ 'catchAllInboxId' => CatchAllInboxId,
       'createdAt' => CreatedAt,
       'dkimTokens' => DkimTokens,
       'domain' => Domain,
       'domainNameRecords' => DomainNameRecords,
       'domainType' => DomainType,
       'id' => Id,
       'isVerified' => IsVerified,
       'updatedAt' => UpdatedAt,
       'userId' => UserId,
       'verificationToken' => VerificationToken
     }.
