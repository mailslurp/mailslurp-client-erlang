-module(maislurp-client-erlang_postmaster_domain_dto).

-export([encode/1]).

-export_type([maislurp-client-erlang_postmaster_domain_dto/0]).

-type maislurp-client-erlang_postmaster_domain_dto() ::
    #{ 'name' := binary(),
       'domain' := binary(),
       'permission' => binary(),
       'createTime' => maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'firstSeenAt' => maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'lastSyncedAt' => maislurp-client-erlang_date_time:maislurp-client-erlang_date_time()
     }.

encode(#{ 'name' := Name,
          'domain' := Domain,
          'permission' := Permission,
          'createTime' := CreateTime,
          'firstSeenAt' := FirstSeenAt,
          'lastSyncedAt' := LastSyncedAt
        }) ->
    #{ 'name' => Name,
       'domain' => Domain,
       'permission' => Permission,
       'createTime' => CreateTime,
       'firstSeenAt' => FirstSeenAt,
       'lastSyncedAt' => LastSyncedAt
     }.
