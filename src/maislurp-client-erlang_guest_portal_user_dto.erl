-module(maislurp-client-erlang_guest_portal_user_dto).

-export([encode/1]).

-export_type([maislurp-client-erlang_guest_portal_user_dto/0]).

-type maislurp-client-erlang_guest_portal_user_dto() ::
    #{ 'id' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'userId' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'portalId' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'name' => binary(),
       'username' := binary(),
       'emailAddress' => binary(),
       'inboxId' => maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'loginUrl' := binary(),
       'createdAt' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'updatedAt' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time()
     }.

encode(#{ 'id' := Id,
          'userId' := UserId,
          'portalId' := PortalId,
          'name' := Name,
          'username' := Username,
          'emailAddress' := EmailAddress,
          'inboxId' := InboxId,
          'loginUrl' := LoginUrl,
          'createdAt' := CreatedAt,
          'updatedAt' := UpdatedAt
        }) ->
    #{ 'id' => Id,
       'userId' => UserId,
       'portalId' => PortalId,
       'name' => Name,
       'username' => Username,
       'emailAddress' => EmailAddress,
       'inboxId' => InboxId,
       'loginUrl' => LoginUrl,
       'createdAt' => CreatedAt,
       'updatedAt' => UpdatedAt
     }.
