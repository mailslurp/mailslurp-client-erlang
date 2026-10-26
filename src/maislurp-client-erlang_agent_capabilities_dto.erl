-module(maislurp-client-erlang_agent_capabilities_dto).

-export([encode/1]).

-export_type([maislurp-client-erlang_agent_capabilities_dto/0]).

-type maislurp-client-erlang_agent_capabilities_dto() ::
    #{ 'connectionId' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'accountId' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'name' := binary(),
       'role' := binary(),
       'permissions' := maislurp-client-erlang_set:maislurp-client-erlang_set(),
       'scope' := maislurp-client-erlang_agent_capability_scope_dto:maislurp-client-erlang_agent_capability_scope_dto(),
       'features' := maislurp-client-erlang_agent_capability_features_dto:maislurp-client-erlang_agent_capability_features_dto(),
       'limits' := maislurp-client-erlang_agent_capability_limits_dto:maislurp-client-erlang_agent_capability_limits_dto(),
       'apiVersion' := binary()
     }.

encode(#{ 'connectionId' := ConnectionId,
          'accountId' := AccountId,
          'name' := Name,
          'role' := Role,
          'permissions' := Permissions,
          'scope' := Scope,
          'features' := Features,
          'limits' := Limits,
          'apiVersion' := ApiVersion
        }) ->
    #{ 'connectionId' => ConnectionId,
       'accountId' => AccountId,
       'name' => Name,
       'role' => Role,
       'permissions' => Permissions,
       'scope' => Scope,
       'features' => Features,
       'limits' => Limits,
       'apiVersion' => ApiVersion
     }.
