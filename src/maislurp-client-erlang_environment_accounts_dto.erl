-module(maislurp-client-erlang_environment_accounts_dto).

-export([encode/1]).

-export_type([maislurp-client-erlang_environment_accounts_dto/0]).

-type maislurp-client-erlang_environment_accounts_dto() ::
    #{ 'accountGroupId' => maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'ownerUserId' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'callerUserId' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'callerRole' := binary(),
       'activeEnvironmentUserId' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'activeEnvironmentLabel' => binary(),
       'links' := list()
     }.

encode(#{ 'accountGroupId' := AccountGroupId,
          'ownerUserId' := OwnerUserId,
          'callerUserId' := CallerUserId,
          'callerRole' := CallerRole,
          'activeEnvironmentUserId' := ActiveEnvironmentUserId,
          'activeEnvironmentLabel' := ActiveEnvironmentLabel,
          'links' := Links
        }) ->
    #{ 'accountGroupId' => AccountGroupId,
       'ownerUserId' => OwnerUserId,
       'callerUserId' => CallerUserId,
       'callerRole' => CallerRole,
       'activeEnvironmentUserId' => ActiveEnvironmentUserId,
       'activeEnvironmentLabel' => ActiveEnvironmentLabel,
       'links' => Links
     }.
