-module(maislurp-client-erlang_device_preview_ingest_domain_dto).

-export([encode/1]).

-export_type([maislurp-client-erlang_device_preview_ingest_domain_dto/0]).

-type maislurp-client-erlang_device_preview_ingest_domain_dto() ::
    #{ 'id' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'userId' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'subdomain' := binary(),
       'domain' := binary(),
       'fullDomain' := binary(),
       'emailAddressPattern' := binary(),
       'createdAt' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'updatedAt' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time()
     }.

encode(#{ 'id' := Id,
          'userId' := UserId,
          'subdomain' := Subdomain,
          'domain' := Domain,
          'fullDomain' := FullDomain,
          'emailAddressPattern' := EmailAddressPattern,
          'createdAt' := CreatedAt,
          'updatedAt' := UpdatedAt
        }) ->
    #{ 'id' => Id,
       'userId' => UserId,
       'subdomain' => Subdomain,
       'domain' => Domain,
       'fullDomain' => FullDomain,
       'emailAddressPattern' => EmailAddressPattern,
       'createdAt' => CreatedAt,
       'updatedAt' => UpdatedAt
     }.
