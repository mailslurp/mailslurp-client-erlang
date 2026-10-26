-module(maislurp-client-erlang_inbox_retention_policy_dto).

-export([encode/1]).

-export_type([maislurp-client-erlang_inbox_retention_policy_dto/0]).

-type maislurp-client-erlang_inbox_retention_policy_dto() ::
    #{ 'id' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'name' => binary(),
       'scope' := binary(),
       'inboxId' => maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'domainId' => maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'retentionDays' := integer(),
       'enabled' := boolean(),
       'excludedInboxIds' := list(),
       'excludedDomainIds' := list(),
       'excludedInboxEmailAddressPatterns' := list(),
       'excludedDomainNamePatterns' := list(),
       'createdAt' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'updatedAt' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time()
     }.

encode(#{ 'id' := Id,
          'name' := Name,
          'scope' := Scope,
          'inboxId' := InboxId,
          'domainId' := DomainId,
          'retentionDays' := RetentionDays,
          'enabled' := Enabled,
          'excludedInboxIds' := ExcludedInboxIds,
          'excludedDomainIds' := ExcludedDomainIds,
          'excludedInboxEmailAddressPatterns' := ExcludedInboxEmailAddressPatterns,
          'excludedDomainNamePatterns' := ExcludedDomainNamePatterns,
          'createdAt' := CreatedAt,
          'updatedAt' := UpdatedAt
        }) ->
    #{ 'id' => Id,
       'name' => Name,
       'scope' => Scope,
       'inboxId' => InboxId,
       'domainId' => DomainId,
       'retentionDays' => RetentionDays,
       'enabled' => Enabled,
       'excludedInboxIds' => ExcludedInboxIds,
       'excludedDomainIds' => ExcludedDomainIds,
       'excludedInboxEmailAddressPatterns' => ExcludedInboxEmailAddressPatterns,
       'excludedDomainNamePatterns' => ExcludedDomainNamePatterns,
       'createdAt' => CreatedAt,
       'updatedAt' => UpdatedAt
     }.
