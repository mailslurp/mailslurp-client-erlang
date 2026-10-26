-module(maislurp-client-erlang_phone_pool_detail_dto).

-export([encode/1]).

-export_type([maislurp-client-erlang_phone_pool_detail_dto/0]).

-type maislurp-client-erlang_phone_pool_detail_dto() ::
    #{ 'id' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'userId' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'name' := binary(),
       'description' => binary(),
       'createdAt' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'updatedAt' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'memberCount' := integer(),
       'availableMemberCount' := integer(),
       'leasedMemberCount' := integer(),
       'members' := list()
     }.

encode(#{ 'id' := Id,
          'userId' := UserId,
          'name' := Name,
          'description' := Description,
          'createdAt' := CreatedAt,
          'updatedAt' := UpdatedAt,
          'memberCount' := MemberCount,
          'availableMemberCount' := AvailableMemberCount,
          'leasedMemberCount' := LeasedMemberCount,
          'members' := Members
        }) ->
    #{ 'id' => Id,
       'userId' => UserId,
       'name' => Name,
       'description' => Description,
       'createdAt' => CreatedAt,
       'updatedAt' => UpdatedAt,
       'memberCount' => MemberCount,
       'availableMemberCount' => AvailableMemberCount,
       'leasedMemberCount' => LeasedMemberCount,
       'members' => Members
     }.
