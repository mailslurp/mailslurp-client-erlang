-module(maislurp-client-erlang_guest_portal_user_projection).

-export([encode/1]).

-export_type([maislurp-client-erlang_guest_portal_user_projection/0]).

-type maislurp-client-erlang_guest_portal_user_projection() ::
    #{ 'username' := binary(),
       'userId' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'emailAddress' => binary(),
       'inboxId' => binary(),
       'updatedAt' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'createdAt' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'portalId' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'name' => binary(),
       'id' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid()
     }.

encode(#{ 'username' := Username,
          'userId' := UserId,
          'emailAddress' := EmailAddress,
          'inboxId' := InboxId,
          'updatedAt' := UpdatedAt,
          'createdAt' := CreatedAt,
          'portalId' := PortalId,
          'name' := Name,
          'id' := Id
        }) ->
    #{ 'username' => Username,
       'userId' => UserId,
       'emailAddress' => EmailAddress,
       'inboxId' => InboxId,
       'updatedAt' => UpdatedAt,
       'createdAt' => CreatedAt,
       'portalId' => PortalId,
       'name' => Name,
       'id' => Id
     }.
