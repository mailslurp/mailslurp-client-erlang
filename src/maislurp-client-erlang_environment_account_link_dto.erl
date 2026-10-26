-module(maislurp-client-erlang_environment_account_link_dto).

-export([encode/1]).

-export_type([maislurp-client-erlang_environment_account_link_dto/0]).

-type maislurp-client-erlang_environment_account_link_dto() ::
    #{ 'id' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'accountGroupId' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'userId' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'emailAddress' := binary(),
       'name' => binary(),
       'role' := binary(),
       'environmentLabel' => binary(),
       'createdAt' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time()
     }.

encode(#{ 'id' := Id,
          'accountGroupId' := AccountGroupId,
          'userId' := UserId,
          'emailAddress' := EmailAddress,
          'name' := Name,
          'role' := Role,
          'environmentLabel' := EnvironmentLabel,
          'createdAt' := CreatedAt
        }) ->
    #{ 'id' => Id,
       'accountGroupId' => AccountGroupId,
       'userId' => UserId,
       'emailAddress' => EmailAddress,
       'name' => Name,
       'role' => Role,
       'environmentLabel' => EnvironmentLabel,
       'createdAt' => CreatedAt
     }.
