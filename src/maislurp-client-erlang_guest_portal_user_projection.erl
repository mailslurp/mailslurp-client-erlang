-module(maislurp-client-erlang_guest_portal_user_projection).

-export([encode/1]).

-export_type([maislurp-client-erlang_guest_portal_user_projection/0]).

-type maislurp-client-erlang_guest_portal_user_projection() ::
    #{ 'name' => binary(),
       'id' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'username' := binary(),
       'emailAddress' => binary(),
       'userId' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'inboxId' => binary(),
       'createdAt' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'updatedAt' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'portalId' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid()
     }.

encode(#{ 'name' := Name,
          'id' := Id,
          'username' := Username,
          'emailAddress' := EmailAddress,
          'userId' := UserId,
          'inboxId' := InboxId,
          'createdAt' := CreatedAt,
          'updatedAt' := UpdatedAt,
          'portalId' := PortalId
        }) ->
    #{ 'name' => Name,
       'id' => Id,
       'username' => Username,
       'emailAddress' => EmailAddress,
       'userId' => UserId,
       'inboxId' => InboxId,
       'createdAt' => CreatedAt,
       'updatedAt' => UpdatedAt,
       'portalId' => PortalId
     }.
