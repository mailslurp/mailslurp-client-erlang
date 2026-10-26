-module(maislurp-client-erlang_user_permission_dto).

-export([encode/1]).

-export_type([maislurp-client-erlang_user_permission_dto/0]).

-type maislurp-client-erlang_user_permission_dto() ::
    #{ 'id' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'userId' => maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'organizationId' => maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'roleId' => maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'permissionType' := binary(),
       'createdAt' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'updatedAt' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time()
     }.

encode(#{ 'id' := Id,
          'userId' := UserId,
          'organizationId' := OrganizationId,
          'roleId' := RoleId,
          'permissionType' := PermissionType,
          'createdAt' := CreatedAt,
          'updatedAt' := UpdatedAt
        }) ->
    #{ 'id' => Id,
       'userId' => UserId,
       'organizationId' => OrganizationId,
       'roleId' => RoleId,
       'permissionType' => PermissionType,
       'createdAt' => CreatedAt,
       'updatedAt' => UpdatedAt
     }.
