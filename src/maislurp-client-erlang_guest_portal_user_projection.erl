-module(maislurp-client-erlang_guest_portal_user_projection).

-export([encode/1]).

-export_type([maislurp-client-erlang_guest_portal_user_projection/0]).

-type maislurp-client-erlang_guest_portal_user_projection() ::
    #{ 'createdAt' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'updatedAt' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'userId' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'emailAddress' => binary(),
       'inboxId' => binary(),
       'portalId' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'name' => binary(),
       'id' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'username' := binary()
     }.

encode(#{ 'createdAt' := CreatedAt,
          'updatedAt' := UpdatedAt,
          'userId' := UserId,
          'emailAddress' := EmailAddress,
          'inboxId' := InboxId,
          'portalId' := PortalId,
          'name' := Name,
          'id' := Id,
          'username' := Username
        }) ->
    #{ 'createdAt' => CreatedAt,
       'updatedAt' => UpdatedAt,
       'userId' => UserId,
       'emailAddress' => EmailAddress,
       'inboxId' => InboxId,
       'portalId' => PortalId,
       'name' => Name,
       'id' => Id,
       'username' => Username
     }.
