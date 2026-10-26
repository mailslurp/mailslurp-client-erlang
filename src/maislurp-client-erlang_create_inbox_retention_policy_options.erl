-module(maislurp-client-erlang_create_inbox_retention_policy_options).

-export([encode/1]).

-export_type([maislurp-client-erlang_create_inbox_retention_policy_options/0]).

-type maislurp-client-erlang_create_inbox_retention_policy_options() ::
    #{ 'name' => binary(),
       'scope' := binary(),
       'retentionDays' := integer(),
       'inboxId' => maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'domainId' => maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'enabled' := boolean(),
       'excludedInboxIds' := list(),
       'excludedDomainIds' := list(),
       'excludedInboxEmailAddressPatterns' := list(),
       'excludedDomainNamePatterns' := list()
     }.

encode(#{ 'name' := Name,
          'scope' := Scope,
          'retentionDays' := RetentionDays,
          'inboxId' := InboxId,
          'domainId' := DomainId,
          'enabled' := Enabled,
          'excludedInboxIds' := ExcludedInboxIds,
          'excludedDomainIds' := ExcludedDomainIds,
          'excludedInboxEmailAddressPatterns' := ExcludedInboxEmailAddressPatterns,
          'excludedDomainNamePatterns' := ExcludedDomainNamePatterns
        }) ->
    #{ 'name' => Name,
       'scope' => Scope,
       'retentionDays' => RetentionDays,
       'inboxId' => InboxId,
       'domainId' => DomainId,
       'enabled' => Enabled,
       'excludedInboxIds' => ExcludedInboxIds,
       'excludedDomainIds' => ExcludedDomainIds,
       'excludedInboxEmailAddressPatterns' => ExcludedInboxEmailAddressPatterns,
       'excludedDomainNamePatterns' => ExcludedDomainNamePatterns
     }.
