-module(maislurp-client-erlang_auth_bootstrap_dto).

-export([encode/1]).

-export_type([maislurp-client-erlang_auth_bootstrap_dto/0]).

-type maislurp-client-erlang_auth_bootstrap_dto() ::
    #{ 'accessToken' := maislurp-client-erlang_temporary_access_key_dto:maislurp-client-erlang_temporary_access_key_dto(),
       'account' := maislurp-client-erlang_account_dto:maislurp-client-erlang_account_dto(),
       'userPermissions' := list(),
       'effectiveUserPermissions' := maislurp-client-erlang_set:maislurp-client-erlang_set(),
       'homeExperience' := maislurp-client-erlang_home_experience_dto:maislurp-client-erlang_home_experience_dto()
     }.

encode(#{ 'accessToken' := AccessToken,
          'account' := Account,
          'userPermissions' := UserPermissions,
          'effectiveUserPermissions' := EffectiveUserPermissions,
          'homeExperience' := HomeExperience
        }) ->
    #{ 'accessToken' => AccessToken,
       'account' => Account,
       'userPermissions' => UserPermissions,
       'effectiveUserPermissions' => EffectiveUserPermissions,
       'homeExperience' => HomeExperience
     }.
